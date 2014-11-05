from django.conf.urls import patterns, include, url
from fundraiser import views

urlpatterns = patterns('',
    url(r'^$', views.f_home, name='f_home'),
    url(r'^f_home/$', views.f_home, name='f_home'),
	url(r'^prospect_view/(?P<prospect_id>\d+)/$', views.prospect_view, name='prospect_view'),
)