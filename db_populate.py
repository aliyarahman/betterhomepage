from app.models import *
import csv


# Section 1: Open the CSV - direct download with no filename changes from the Google doc

print "Getting data...\n"
input_file = csv.DictReader(open("Fellows post residency quotes 9-14 - Sheet1.csv"))



# Parse fieldnames
print "Adding fellows to the database...\n"
for fellow in input_file:
    q1 = fellow["What's something you built or worked on during the residency that you are really proud of?"]
    q2 = fellow["What's your favorite programming language?"]
    q3 = fellow["How has your vision for the role of tech in your/your community's life changed since April?"]
    q4 = fellow["What did you do post-residency to relax/recover/have fun/etc?"]
    
    # Commit to the database
    fellow = Fellow(first_name = fellow['first_name'], last_name=fellow['last_name'], where_from = fellow['where_from'], cohort = "2004 Spring", post_2014_residency_q1 = q1, post_2014_residency_q2 = q2, post_2014_residency_q3 = q3, post_2014_residency_q4 = q4)
    fellow.save()
