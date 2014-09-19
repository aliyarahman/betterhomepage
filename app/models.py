#section 1: imports
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