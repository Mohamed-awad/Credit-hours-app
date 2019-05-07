from django import forms
from .models import Student


class StudentForm(forms.ModelForm):
  class Meta:
    model = Student
    fields = ('name', 'email', 'faculty', 'year_of_study')


class LoginForm(forms.ModelForm):
  class Meta:
    model = Student
    fields = ('username', 'password')
