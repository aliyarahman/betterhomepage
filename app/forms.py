#Section 1: import
from django import forms
from app.models import Contact
from django.forms import ModelForm
from django.forms.models import modelformset_factory



CONTACT_CHOICES =   (('application', ('be notified when the 2015 application is available.')),
                     ('coach', ('be a short-term coding or professional development coach')),
                     ('instructor', ('teach a lesson as a guest instructor.')),
                     ('mentor', ('be a year-long professional mentor.')),
                     ('email_list', ('receive email updates from Code for Progress.')),
                     ('other', ('contact Code for Progress for something else.')))


class ContactForm(forms.Form):
    first_name = forms.CharField(max_length=45, required = True)
    last_name = forms.CharField(max_length=45, required = True)
    email = forms.CharField(max_length=45, required = True)
    interested_in = forms.MultipleChoiceField(
                            choices = CONTACT_CHOICES,
                            widget=forms.CheckboxSelectMultiple(),
                            required=True,
                            )
    notes = forms.CharField(required=False, widget = forms.Textarea)

