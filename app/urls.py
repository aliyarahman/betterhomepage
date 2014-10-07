from django.conf.urls import patterns, include, url
from app import views
from app.views import ContactUsView

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^index/$', views.index, name='index'),
    url(r'^about/$', views.about, name='about'),
    url(r'^apply/$', views.apply, name='apply'),
    url(r'^donate/$', views.donate, name='donate'),
    url(r'^partner/$', views.partner, name='partner'),
    url(r'^press/$', views.press, name='press'),
    url(r'^fellow/(?P<fellow_firstname>.+)/$', views.fellow, name='fellow'),
    url(r'^cohort/$', views.cohort, name='cohort'),
    url(r'^contact/$', ContactUsView.as_view(), name='contact'),
    url(r'^thank_you/$', views.thank_you, name='thank_you'),  
)
