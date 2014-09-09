from django.conf.urls import patterns, include, url
from app import views


urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^index/$', views.index, name='index'),
    url(r'^about/$', views.about, name='about'),
    url(r'^apply/$', views.apply, name='apply'),
    url(r'^donate/$', views.donate, name='donate'),
    url(r'^partner/$', views.partner, name='partner'),
    url(r'^press/$', views.press, name='press'),
    url(r'^fellows/$', views.fellows, name='fellows'),
    
)
