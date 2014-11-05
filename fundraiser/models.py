from django.db import models

import datetime

class Prospect(models.Model):
    name = models.CharField(max_length=200)
    active = models.BooleanField(null=True, blank=True)
    grant = models.BooleanField(null=True, blank=True)
    proposal = models.BooleanField(null=True, blank=True)
    work_collaboration = models.BooleanField(null=True, blank=True)
    relationship = models.BooleanField(null=True, blank=True)
    notes = models.TextField(null=True, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def __unicode__(self):
        return self.name


class Action(models.Model):
    label = models.CharField(max_length=200)
    description = models.CharField(max_length=200)
    done = models.BooleanField(default = False)
    deadline = models.DateTimeField(null=True, blank=True)
    prospect = models.ForeignKey(Prospect, null=True, blank=True)
    notes = models.TextField(null=True, blank=True)
    
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def __unicode__(self):
        return self.label


class Reminder(models.Model):
    prospect = models.ForeignKey(Action, null=True, blank=True)
    date = models.DateTimeField(null=True, blank=True)
    message = models.CharField(max_length=200, null=True, blank=True)

    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def __unicode__(self):
        return self.message