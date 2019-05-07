from django.shortcuts import render, redirect
from django.http import HttpResponse
from .forms import StudentForm, LoginForm
from django.core.mail import send_mail
from .models import Student
from django.contrib import messages


def sign_up(request):
  if request.method == "GET":
    form = StudentForm()
    context = {
      'form': form,
    }
    return render(request, "accounts/signup.html", context)
  else:
    form = StudentForm(request.POST)
    if form.is_valid():
      student = form.save()
      print(student.id)
      student.username = ''.join(student.name[0:2] + str(student.id) + student.faculty[0:2] + student.year_of_study)
      student.password = ''.join(student.faculty[-3:-1] + str(student.id) + student.name[-3:-1] + student.year_of_study)
      student.save()
      send_mail(
        'UserName and Password',
        ''' your username: {0}\nyour password: {1}'''.format(student.username, student.password),
        'awadmohamed@gmail.com',
        [student.email],
        fail_silently=False,
      )
    return redirect('accounts:login')


def login(request):
  if request.method == "GET":
    form = LoginForm()
    context = {
      'form': form,
    }
    return render(request, "accounts/login.html", context)
  else:
    form = LoginForm(request.POST)
    if form.is_valid():
      students = Student.objects.filter(username=form.cleaned_data['username'],
                                        password=form.cleaned_data['password'])
      if len(students) == 1:
        request.session['id'] = students[0].id
        return redirect('subject:semester')
      else:
        messages.error(request, 'username or password not correct')
        return redirect('accounts:login')


def logout(request):
  if "id" not in request.session:
    return redirect('accounts:login')
  del request.session['id']
  return redirect('accounts:login')


def redirect_to_signup(request):
  return redirect('accounts:signup')


