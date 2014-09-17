import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from app.models import Contact
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
    return render(request, "fellows.html")

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
                return render(request, 'thankyou.html', {'form': form})

            else: 
                form = ContactForm()
                return render(request, 'contact.html', {'form' : form})


def thank_you(request):
    return render(request, "thankyou.html")