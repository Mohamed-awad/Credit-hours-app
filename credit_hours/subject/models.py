from django.db import models


class Subject(models.Model):
  SEMESTERS = (
    (1, 1),
    (2, 2),
  )

  name = models.CharField(max_length=50, blank=False, default='')
  number_of_hours = models.IntegerField(default=0)
  semester_number = models.IntegerField(choices=SEMESTERS, default=1)

  def __str__(self):
    return self.name


class Subject_Student(models.Model):

  SEMESTERS = (
    (1, 1),
    (2, 2),
  )

  student = models.ForeignKey('accounts.Student', related_name='subject', on_delete=True)
  subject = models.ForeignKey('subject.Subject', related_name='student', on_delete=True)
  semester_number = models.IntegerField(choices=SEMESTERS, default=1)

