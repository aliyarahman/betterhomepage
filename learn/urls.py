from django.conf.urls import patterns, include, url
from learn import views

urlpatterns = patterns('',
    url(r'^learn_home/$', views.learn_home, name='learn_home'),
    url(r'^words/$', views.words, name='words'),
    url(r'^badges/$', views.badges, name='badges'),
    url(r'^lessons/$', views.lessons, name='lessons'),
)
