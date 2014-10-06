import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mass_mail
from email_texts import admin_email_address
from app.models import *
from app.forms import ContactForm

def index(request):
	return render(request, "index.html")

def about(request):
    return render(request, "about.html")

def apply(request):
    return render(request, "apply.html")

def donate(request):
    return render(request, "donate.html")

def partner(request):
    return render(request, "partner.html")

def press(request):
    return render(request, "press.html")

def fellows(request):
    fellows = Fellow.objects.order_by('first_name').all()
    return render(request, "fellows.html", {'fellows':fellows})

def thank_you(request):
    return render(request, "thankyou.html")

class ContactUsView(TemplateView):
    def get(self, request, **kwargs):
        form = ContactForm()
        template = "contact.html"
        return render (request, template, {'form':form})

    def post(self, request, **kwargs):
        if request.method == "POST":
            form = ContactForm(request.POST)
            if form.is_valid():
                first_name = form.cleaned_data.get("first_name")
                last_name = form.cleaned_data.get("last_name")
                email = form.cleaned_data.get("email")
                interested_in = form.cleaned_data.get("interested_in")
                notes = form.cleaned_data.get("notes")
                if first_name and last_name and email and interested_in:
                    contact = Contact(first_name = first_name, last_name = last_name, email = email, interested_in = interested_in)
                    contact.save()
                # return render (request, 'thankyou.html', {'form': form})

                from email_texts import english_version_emails as emails

                # Grab admin email list (if not already grabbed or stored somewhere else)
                admin_email_list = [admin_email_address]
        
                # Build confirmation email
                email = emails['contact']['confirmation']
                email_body = email['body']#.format(first_name=contact.first_name,
                #     email=contact.email,
                #     interested_in=contact.interested_in)
                confirmation_email = (email['subject'], email_body, email['from'], [contact.email])
        
                # Build admin notification email
                email = emails['contact']['admin']
                admin_email_body = email['body']#.format(email=contact.email)
                admin_email = (email['subject'], admin_email_body, email['from'], admin_email_list)
        
                # Send Them
                try:
                    send_mass_mail((admin_email, confirmation_email), fail_silently=False)
                except:
                    pass
                #end of code for confirmation e-mail
                
                
                # Still need to check for saving of skills they have here
                return HttpResponseRedirect(reverse('thank_you'))

            else: 
                form = ContactForm()
                return render(request, 'contact.html', {'form' : form})


