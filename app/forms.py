#Section 1: import
from django import forms
from app.models import Contact
from django.forms import ModelForm
from django.forms.models import modelformset_factory



CONTACT_CHOICES =   (('application', ('receive the 2015 application when it is released.')),
                     ('coach', ('be a coding or professional development coach for new coders or fellows.')),
                     ('instructor', ('teach as a guest instructor.')),
                     ('mentor', ('be a year-long professional mentor.')),
<<<<<<< HEAD
                     ('email_list', ('join the email list and receive updates on Code For Progress opportunities.')),
                     ('other', ('contact Code for Progress for another matter.'))
                     )
=======
                     ('other', ('other')),)

>>>>>>> 31c738df5235ce4759eb1650f904b3129f842f6b


class ContactForm(forms.Form):
    first_name = forms.CharField(max_length=45, required = True)
    last_name = forms.CharField(max_length=45, required = True)
    email = forms.CharField(max_length=45, required = True)
    interested_in = forms.MultipleChoiceField(
                            choices = CONTACT_CHOICES,
                            widget=forms.CheckboxSelectMultiple(),
                            required=True,
                            )
    notes = forms.CharField(max_length = 150, required=False)

