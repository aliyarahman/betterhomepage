from django import forms
from app.models import Contact
from django.forms import ModelForm
from django.forms.models import modelformset_factory



CONTACT_CHOICES =   (('application', _('receive the 2015 application when it is released.')),
                     ('coach', _('be a coding or professional development coach for new coders or fellows.')),
                     ('instructor', _('teach as a guest instructor.')),
                     ('mentor', _('be a year-long professional mentor.')),)



class ContactForm(forms.Form):
    first_name = forms.CharField(max_length=45)
    last_name = forms.CharField(max_length=45)
    email = forms.CharField(max_length=45)  
    interested_in = forms.MultipleChoiceField(
                            choices = CONTACT_CHOICES,
                            widget=forms.CheckboxSelectMultiple(),
                            required=True,
                            )
    notes = forms.CharField(max_length = 150, required=False)

