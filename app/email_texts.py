# -*- coding: utf-8 -*-
# Contains email body, subject, and from-email text to be sent when users create new provider accounts, or volunteer accounts
# STILL NEEDS TO BE CHANGED: - All the [link] references in the email bodies - the 'from' values in the dictionaries
# ------------------------------------------ ENGLISH LANGUAGE EMAIL BODIES --------------------------------------------

admin_email_address = "elaine@codeforprogress.org"


english_confirmation_body = '''Dear {first_name},

Thank you for reaching out to Code For Progress. We are so excited you are interested in playing a part in fostering a new wave of social minded coders. Someone from our staff will be contacting you shortly.

Talk soon!
CFP Staff

'''  

english_admin_body = '''Hello,

{first_name} {last_name} has reached out to find out more about {interested_in}. Please contact them regarding thier interests. 

Ps. you're awesome. 
'''


english_version_emails = {
    'contact': {
        'confirmation': {
            'from':admin_email_address,
            'subject':'Thanks for Reaching Out!',
            'body':english_confirmation_body
        },
        'admin':{
            'from':admin_email_address,
            'subject':'New Message: ',
            'body':english_admin_body
        }
    }
}