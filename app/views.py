import urlparse
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponseRedirect, HttpResponse
from django.utils.decorators import method_decorator
from django.core.urlresolvers import reverse
from django.views.generic.base import TemplateView
from django.core.mail import send_mail
from app.models import *
from app.forms import ContactForm

def home(request):
	return render(request, "index.html")

def about(request):
    return render(request, "about.html")

def apply(request):
    return render(request, "apply.html")

def donate(request):
    return render(request, "donate.html")

def community(request):
    return render(request, "community.html")

def partner(request):
    return render(request, "partner.html")

def press(request):
    return render(request, "press.html")

def tech(request):
    return render(request, "tech.html")

def staff_fellows(request):
    fellows = Fellow.objects.order_by('last_name')
    return render(request, "staff_fellows.html", {'fellows':fellows})

def fellow(request, fellow_firstname):
    fellow = Fellow.objects.filter(first_name=fellow_firstname).first()
    return render(request, "fellow.html", {'fellow':fellow})

def executive_director(request):
    return render(request, "executive_director.html")

def program_director(request):
    return render(request, "program_director.html")

def thank_you(request):
    return render(request, "thankyou.html")

def yearInReview2014(request):
    return render(request, "yearInReview2014.html")

def rootscamp(request):
    return render(request, "rootscamp.html")

def learn_portal(request):
    weeks = [{'number':1, 'title': 'Code, Power, and the Big Picture', 'description':'Our communities. Our country. Our code.'},
    {'number':2, 'title': 'Grassroots and Building Blocks', 'description':'User stories. Wireframes. Human-centered design. Linux. The BASH command line. Github pushes.'},
    {'number':3, 'title': 'No More Drama: Project planning for trust and usability', 'description':'Agile project management. Design basics. The The front end. Bootstrap. HTML. CSS.'},
    {'number':4, 'title': 'For Activists Who Have Considered Leaving When the Movement is Not Enough', 'description':'Race, gender, class, sexuality, and the workplace. Resumes and cover letters. Test-driven development. Variables. Control flow. Strings. Loops. JavaScript.'},
    {'number':5, 'title': 'Do Androids Dream of Electric Ladies?', 'description':'Digital culture shift and object-oriented programming. Functions. Objects. Modularizing. DRY JavaScript.'},
    {'number':7, 'title': 'Empowered APIs', 'description':'jQuery. APIs. RESTful services. JSON. XML. Ajax.'},
    {'number':8, 'title': 'Doors and Phones and Code and Power: Telling our communities\' stories through data', 'description':'Data visualization. d3. JSON.'},
    {'number':9, 'title': 'Architects and Model Glue: How social-justice software sticks together', 'description':'Model-view-whatever. Single-page applications. Angular.js'},
    {'number':10, 'title': 'Who Runs the World? urls.', 'description':'How the internet works. Angular.js. Heroku. Basic deployment, workflow, and dev-ops.'},
    {'number':11, 'title': 'Huck, Quinn, Black, White', 'description':'The back end. Security. Python.'},
    {'number':12, 'title': 'Ten Thousand Sign-In Sheets', 'description':'Data. Python. JSON collections. The CSV library.'},
    {'number':13, 'title': 'Fast, Furious Data Driving: Databases and SQL for understanding communities', 'description':'Big data. Databases. SQL. PostgreSQL.'},
    {'number':14, 'title': 'Narrative Control', 'description':'Telling better stories with data. Queries. Joins. SQL. PostgreSQL. Major data vendor platforms.'},
    {'number':15, 'title': 'After List-Building: What can data do for movements?', 'description':'Cleaning data. Data analysis. SQLAlchemy. PANDAS. Python. PostgreSQL.'},
    {'number':16, 'title': 'Code for Ordinary People: Linking back-end and front-end code for usable apps', 'description':'Django. Model-view-whatever revisited.Migrations. South.'},
    {'number':17, 'title': 'Building a Crew and Rolling Deep: The work of diversity in the 2014 coding workforce', 'description':'Job searching. Legacy code. Django.'},
    {'number':18, 'title': 'Business as Casual', 'description':'Clothes, privilege, and interview prep. Job searching. Django.'},
    {'number':19, 'title': 'The Cohort and the Drawing Board', 'description':'Job searching. Whiteboarding. Resumes and cover letters.'},
    {'number':20, 'title': 'The Road From Here', 'description':'Mock interviews. Job searching. Graduation.'}]
    return render(request, "learn_portal.html", {'weeks': weeks})

class ContactUsView(TemplateView):
    def get(self, request, **kwargs):
        form = ContactForm()
        template = "contact.html"
        return render (request, template, {'form':form})

    def post(self, request, **kwargs):
        if request.method == "POST":
            form = ContactForm(request.POST)
            if form.is_valid():
                first_name = form.cleaned_data.get("first_name")
                last_name = form.cleaned_data.get("last_name")
                staff_email = 'info@codeforprogress.org'
                email = form.cleaned_data.get("email")
                interested_in = form.cleaned_data.get("interested_in")
                notes = form.cleaned_data.get("notes")
                message_interest_string = ""
                for i in interested_in:
                    message_interest_string+="\n\t + "+str(i)
                if first_name and last_name and email and interested_in:
                    contact = Contact(first_name = first_name, last_name = last_name, email = email, interested_in = interested_in, notes=notes)
                    contact.save()
                    send_mail('Thanks for contacting Code for Progress', "Thanks for contacting Code for Progress! Our staff will be in touch with you shortly.", 'Code for Progress', [email], fail_silently=False)
                    send_mail('New email from the CFP website', (first_name+" "+last_name+"("+email+") just wrote to us. \n\nWe have all of their info saved in the database, and they're interested in these things:\n"+message_interest_string+"\n\nThey also said:\n "+notes), email, ['aliya@codeforprogress.org'], fail_silently=False)
                    return redirect('thank_you')
            return render(request, 'contact.html', {'form' : form})


