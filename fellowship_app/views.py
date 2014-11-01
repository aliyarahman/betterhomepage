import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from fellowship_app.models import *
from fellowship_app.forms import *


def login(request):
	return "Login page"

def logout(request):
	return "Logout page"

def reset_password(request):
	return "Reset password"

def help(request):
	return "Get help here"

def checklist(request):
	return "Checklist"

def create_profile(request):
	return "Create your basic profile"

@login_required
def index(request):
	return "Main menu"

@login_required
def edit_profile(request):
	return "Edit your profile"

@login_required
def short_answers(request):
	return "Short answer question"

@login_required
def skills(request):
	return "Skill checklist"

@login_required
def recommenders(request):
	return "Enter recommenders"

@login_required
def final_submission(request):
	return "Final submission"

@login_required
def received(request):
	return "Your application has been received"