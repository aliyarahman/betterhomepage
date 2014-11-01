from django.conf.urls import patterns, include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^', include('app.urls')),
    url(r'^app/', include('app.urls')),
    url(r'^fellowship_app/', include('fellowship_app.urls')),
    url(r'^admin/', include(admin.site.urls)),
)