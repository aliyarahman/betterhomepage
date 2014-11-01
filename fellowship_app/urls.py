from django.conf.urls import patterns, url, include
from fellowship_app import views


urlpatterns = patterns('',
	url(r'^$', views.index, name='index'),
	url(r'^login/$', views.login, name='login'),
	url(r'^logout/$', views.logout, name='logout'),
	url(r'^reset_password/$', views.reset_password, name='reset_password'),
	url(r'^help/$', views.help, name='help'),
	url(r'^checklist/$', views.checklist, name='checklist'),
	url(r'^create_profile/$', views.create_profile, name='create_profile'),
	url(r'^index/(?P<user_id>\d+)/$', views.index, name='index'),
	url(r'^edit_profile/(?P<user_id>\d+)/$', views.edit_profile, name='edit_profile'),
	url(r'^short_answers/(?P<user_id>\d+)/$', views.short_answers, name='short_answers'),
	url(r'^skills/(?P<user_id>\d+)/$', views.skills, name='skills'),
	url(r'^recommenders/(?P<user_id>\d+)/$', views.recommenders, name='recommenders'),
	url(r'^final_submission/(?P<user_id>\d+)/$', views.final_submission, name='final_submission'),
	url(r'^received/(?P<user_id>\d+)/$', views.received, name='received'),
)