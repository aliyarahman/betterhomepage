import urlparse
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from fundraiser.models import *

def f_home(request):
    prospects = Prospect.objects.all()
    return render(request, "f_home.html", {prospects:prospects})

def prospect_view(request):
#    prospect = get_object_or_404(Prospect, prospect_id)
    return render(request, "prospect_view.html")