from django.conf.urls import patterns, include, url
from app import views
from app.views import ContactUsView

urlpatterns = patterns('',
    url(r'^$', views.home, name='home'),
    url(r'^home/$', views.home, name='home'),
    url(r'^about/$', views.about, name='about'),
    url(r'^apply/$', views.apply, name='apply'),
    url(r'^donate/$', views.donate, name='donate'),
    url(r'^community/$', views.community, name='community'),
    url(r'^partner/$', views.partner, name='partner'),
    url(r'^press/$', views.press, name='press'),
    url(r'^executive_director/$', views.executive_director, name='executive_director'),
    url(r'^program_director/$', views.program_director, name='program_director'),
    url(r'^fellow/(?P<fellow_firstname>.+)/$', views.fellow, name='fellow'),
    url(r'^staff_fellows/$', views.staff_fellows, name='staff_fellows'),
    url(r'^contact/$', ContactUsView.as_view(), name='contact'),
    url(r'^thank_you/$', views.thank_you, name='thank_you'),
    url(r'^learn_portal/$', views.learn_portal, name='learn_portal'),
    url(r'^yearInReview2014/$', views.yearInReview2014, name='yearInReview2014'),
)
