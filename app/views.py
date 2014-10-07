import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mail
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

def cohort(request):
    return render(request, "cohort.html")

def fellow(request, fellow_firstname):
    fellow = Fellow.objects.filter(first_name=fellow_firstname).first()
    return render(request, "fellow.html", {'fellow':fellow})

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
                    send_mail('Thanks for contacting Code for Progress', "Thanks for getting involved with Code for Progress! We'll contact you shortly!", 'Code for Progress', [email], fail_silently=False)
                    return render (request, 'thankyou.html', {'form': form})



                '''from email_texts import english_version_emails as emails
        
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
                #end of code for confirmation e-mail'''
            return render(request, 'contact.html', {'form' : form})