import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mail
from app.models import *
from app.forms import ContactForm

def home(request):
	return render(request, "index.html")

def about(request):
    return render(request, "about.html")

def apply(request):
    return render(request, "apply.html")

def donate(request):
    return render(request, "donate.html")

def community(request):
    return render(request, "community.html")

def partner(request):
    return render(request, "partner.html")

def press(request):
    return render(request, "press.html")

def staff_fellows(request):
    fellows = Fellow.objects.order_by('last_name')
    return render(request, "staff_fellows.html", {'fellows':fellows})

def fellow(request, fellow_firstname):
    fellow = Fellow.objects.filter(first_name=fellow_firstname).first()
    return render(request, "fellow.html", {'fellow':fellow})

def executive_director(request):
    return render(request, "executive_director.html")

def program_director(request):
    return render(request, "program_director.html")

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
                staff_email = 'info@codeforprogress.org'
                email = form.cleaned_data.get("email")
                interested_in = form.cleaned_data.get("interested_in")
                notes = form.cleaned_data.get("notes")
                message_interest_string = ""
                for i in interested_in:
                    message_interest_string+="\n\t + "+str(i)
                if first_name and last_name and email and interested_in:
                    contact = Contact(first_name = first_name, last_name = last_name, email = email, interested_in = interested_in)
                    contact.save()
                    send_mail('Thanks for contacting Code for Progress', "Thanks for contacting Code for Progress! Our staff will be in touch with you shortly.", 'Code for Progress', [email], fail_silently=False)
                    send_mail('New email from the CFP website', (first_name+" "+last_name+"("+email+") just wrote to us. \n\nWe have all of their info saved in the database, and they're interested in these things:\n"+message_interest_string+"\n\nThey also said:\n "+notes), email, [staff_email], fail_silently=False)
                    return render (request, 'thankyou.html', {'form': form})
            return render(request, 'contact.html', {'form' : form})