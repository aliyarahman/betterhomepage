import urlparse
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mail
from learn.models import *

def learn_home(request):
	return render(request, "learn_home.html")

def lessons(request):
    return render(request, "about.html")

def badges(request):
    return render(request, "apply.html")

def words(request):
    return render(request, "apply.html")