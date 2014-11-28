from django.db import models

import datetime
# Create your models here.

class Contact(models.Model):
    first_name = models.CharField(max_length=15)
    last_name = models.CharField(max_length=15)
    email = models.EmailField(max_length=255)
    interested_in = models.CharField(max_length=300, null=True, blank=True)
    notes = models.CharField(max_length=150, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def __unicode__(self):
        return self.email


class Fellow(models.Model):
    first_name = models.CharField(max_length=15)
    last_name = models.CharField(max_length=15)
    where_from = models.CharField(max_length=300, null=True, blank=True)
    current_job = models.CharField(max_length=300, null=True, blank=True)
    cohort = models.CharField(max_length=100, null=True, blank=True)
    post_2014_residency_q1 = models.CharField(max_length=2000, null=True, blank=True)
    post_2014_residency_q2 = models.CharField(max_length=2000, null=True, blank=True)
    post_2014_residency_q3 = models.CharField(max_length=2000, null=True, blank=True)
    post_2014_residency_q4 = models.CharField(max_length=2000, null=True, blank=True)    
    page_text = models.TextField(null=True, blank=True)
    github_username = models.CharField(max_length=45, null=True, blank=True)

    def __unicode__(self):
        return self.first_name+" "+self.last_name