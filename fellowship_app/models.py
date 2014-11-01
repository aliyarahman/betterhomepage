from django.db import models
import datetime
from django.contrib.auth.models import User
# Create your models here.

class Applicant(models.Model):
    user = models.ForeignKey(User)
    role = models.IntegerField(default = 1) # Role 1 = Applicant
    phone = models.CharField(max_length=45, null=True, blank=True)
    address = models.CharField(max_length=90, null=True, blank=True)
    city = models.CharField(max_length=45, null=True, blank=True)
    state = models.CharField(max_length=45, null=True, blank=True)
    zipcode = models.CharField(max_length=10, null=True, blank=True)
    languages = models.TextField(null=True, blank=True)
    culturalgroups = models.TextField(null=True, blank=True)
    working = models.TextField(null=True, blank=True)
    school = models.TextField(null=True, blank=True)
    appsource = models.CharField(max_length=50, null=True, blank=True)
    Q01 = models.TextField(null=True, blank=True)
    Q02 = models.TextField(null=True, blank=True)
    Q03 = models.TextField(null=True, blank=True)
    Q04 = models.TextField(null=True, blank=True)
    Q05 = models.TextField(null=True, blank=True)
    Q06 = models.TextField(null=True, blank=True)
    Q07 = models.TextField(null=True, blank=True)
    Q08 = models.TextField(null=True, blank=True)
    Q09 = models.TextField(null=True, blank=True)
    Q10 = models.TextField(null=True, blank=True)
    Q11 = models.TextField(null=True, blank=True)
    Q12 = models.TextField(null=True, blank=True)
    basicq1 = models.CharField(max_length=45, null=True, blank=True)
    basicq2 = models.CharField(max_length=45, null=True, blank=True)
    basicq3 = models.CharField(max_length=45, null=True, blank=True)
    basicq4 = models.CharField(max_length=45, null=True, blank=True)
    basicq5 = models.CharField(max_length=45, null=True, blank=True)
    basicq6 = models.CharField(max_length=45, null=True, blank=True)
    basicq7 = models.CharField(max_length=45, null=True, blank=True)
    basicq8 = models.CharField(max_length=45, null=True, blank=True)
    basicq9 = models.CharField(max_length=45, null=True, blank=True)
    systemsq1 = models.CharField(max_length=45, null=True, blank=True)
    systemsq2 = models.CharField(max_length=45, null=True, blank=True)
    systemsq3 = models.CharField(max_length=45, null=True, blank=True)
    systemsq4 = models.CharField(max_length=45, null=True, blank=True)
    codingq1 = models.CharField(max_length=45, null=True, blank=True)
    codingq2 = models.CharField(max_length=45, null=True, blank=True)
    codingq3 = models.CharField(max_length=45, null=True, blank=True)
    codingq4 = models.CharField(max_length=45, null=True, blank=True)
    codingq5 = models.CharField(max_length=45, null=True, blank=True)
    codingq6 = models.CharField(max_length=45, null=True, blank=True)
    rec1firstname = models.CharField(max_length=45, null=True, blank=True)
    rec1lastname = models.CharField(max_length=45, null=True, blank=True)
    rec1email = models.CharField(max_length=45, null=True, blank=True)
    rec1phone = models.CharField(max_length=45, null=True, blank=True)
    rec1how = models.TextField(null=True, blank=True)
    rec2firstname = models.CharField(max_length=45, null=True, blank=True)
    rec2lastname = models.CharField(max_length=45, null=True, blank=True)
    rec2email = models.CharField(max_length=45, null=True, blank=True)
    rec2phone = models.CharField(max_length=45, null=True, blank=True)
    rec2how = models.TextField(null=True, blank=True)
    rec3firstname = models.CharField(max_length=45, null=True, blank=True)
    rec3lastname = models.CharField(max_length=45, null=True, blank=True)
    rec3email = models.CharField(max_length=45, null=True, blank=True)
    rec3phone = models.CharField(max_length=45, null=True, blank=True)
    rec3how = models.TextField(null=True, blank=True)
    eval1_id = models.IntegerField(null=True, blank=True)
    eval2_id = models.IntegerField(null=True, blank=True)
    eval3_id = models.IntegerField(null=True, blank=True)
    application_complete = models.IntegerField(default = 0)
    recommendations_complete = models.IntegerField(default = 0)

    # Auto-generated timestamps
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())


    def short_questions_complete(self):
        if self.Q01 and self.Q02 and self.Q03 and self.Q04 and self.Q05 and self.Q06 and \
           self.Q07 and self.Q08 and self.Q09 and self.Q10 and self.Q11 and self.Q12:
           return True
        return False

    def skills_complete(self):
        if self.basicq1 and self.basicq2 and self.basicq3 and self.basicq4 and \
           self.basicq5 and self.basicq6 and self.basicq7 and self.basicq8 and self.basicq9:
           return True
        return False

    def recommenders_complete(self):
        if self.rec1firstname and self.rec1lastname and self.rec1email and self.rec1phone and \
           self.rec1how and self.rec2firstname and self.rec2lastname and self.rec2email and \
           self.rec2phone and self.rec2how and self.rec3firstname and self.rec3lastname and \
           self.rec3email and self.rec3phone and self.rec3how:
           return True
        return False

    def __unicode__(self):
        return self.user.username



class Recommender(models.Model):
    user = models.ForeignKey(User)
    role = models.IntegerField(default = 2) # Role 2 = Recommender
    applicants = models.ManyToManyField(Applicant, default = [])

    # Auto-generated timestamps
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def done_recommending(self):
        total_complete = 0
        for rec in self.recommendation_set.all():
            if rec.is_complete:
                total+=1
        if total >= len(self.recommendation_set.all()):
            return True
        else:
            return False

    def __unicode__(self):
        return self.user.username




class Evaluator(models.Model):
    user = models.ForeignKey(User)
    role = models.IntegerField(default = 3) # Role 3 = Evaluator
    applicants = models.ManyToManyField(Applicant, default = [])

    # Auto-generated timestamps
    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def done_evaluating(self):
        total_complete = 0
        for evaluation in self.evaluation_set.all():
            if evaluation.is_complete:
                total+=1
        if total >= len(self.evaluation_set.all()):
            return True
        else:
            return False

    def __unicode__(self):
        return self.user.username



class Recommendation(models.Model):
    applicant = models.ForeignKey(Applicant)
    recommender = models.ForeignKey(Recommender)
    recq1 = models.IntegerField(null=True, blank=True)
    recq1ex = models.TextField(null=True, blank=True)
    recq2 = models.IntegerField(null=True, blank=True)
    recq2ex = models.TextField(null=True, blank=True)
    recq3 = models.IntegerField(null=True, blank=True)
    recq3ex = models.TextField(null=True, blank=True)
    recq4 = models.IntegerField(null=True, blank=True)
    recq4ex = models.TextField(null=True, blank=True)
    recq5 = models.IntegerField(null=True, blank=True)
    recq5ex = models.TextField(null=True, blank=True)
    recq6 = models.IntegerField(null=True, blank=True)
    recq6ex = models.TextField(null=True, blank=True)
    recq7 = models.TextField(null=True, blank=True)
    recq8 = models.TextField(null=True, blank=True)
    complete = models.IntegerField(default = 0)

    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def is_complete(self):
        if self.recq1 and self.recq1ex and self.recq2 and self.recq2ex and self.recq3 and self.recq3ex and \
            self.recq4 and self.recq4ex and self.recq5 and self.recq5ex and self.recq6 and self.recq6ex and \
            self.recq7 and self.recq8:
            self.complete = 1
            self.save()
            return True
        else:
        	return False

    def __unicode__(self):
        return self.recommender.user.lastname+" "+self.applicant.user.lastname



class Evaluation(models.Model):
    applicant = models.ForeignKey(Applicant)
    evaluator = models.ForeignKey(Evaluator)
    critical = models.IntegerField(null=True, blank=True)
    mission = models.IntegerField(null=True, blank=True)
    community = models.IntegerField(null=True, blank=True)
    inspire = models.IntegerField(null=True, blank=True)
    yesno = models.TextField(null=True, blank=True)
    interview = models.TextField(null=True, blank=True)
    additional = models.TextField(null=True, blank=True)
    complete = models.IntegerField(default = 0)

    created_at = models.DateTimeField(auto_now_add=True, default=datetime.datetime.now())
    updated_at = models.DateTimeField(auto_now=True, default=datetime.datetime.now())

    def is_complete(self):
        if self.critical and self.mission and self.community and self.inspire and self.yesno and self.interview:
            self.complete = 1
            self.save()
            return True
        else:
            return False

    def __unicode__(self):
        return self.evaluator.user.lastname+"-"+self.applicant.user.lastname