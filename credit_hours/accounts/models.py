from django.db import models


class Student(models.Model):

    YEARS = (
        ('1', '1'),
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
    )

    username = models.CharField(max_length=30, blank=False, default='')
    email = models.EmailField(max_length=30, blank=False, default='')
    password = models.CharField(max_length=30, blank=False, default='')

    name = models.CharField(max_length=50, blank=False, default='')
    faculty = models.CharField(max_length=256, blank=False, default='')

    year_of_study = models.CharField(max_length=1,
                                    choices=YEARS,
                                    default='1')

