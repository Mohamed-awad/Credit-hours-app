from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from .models import Subject, Subject_Student
from accounts.models import Student
from django.contrib import messages


st_hours = 0


def semester(request):
  if "id" not in request.session:
    return redirect('accounts:login')
  return render(request, 'subject/semester.html')


def register_first_semseter(request):
  if "id" not in request.session:
    return redirect('accounts:login')
  subjects = Subject.objects.filter(semester_number=1)
  global st_hours
  st_hours = 0
  for sub in subjects:
    st_sub = Subject_Student.objects.filter(subject=sub.id, student=request.session['id'])
    if len(st_sub) == 1:
      sub.reg = True
      st_hours += sub.number_of_hours
    else:
      sub.reg = False
  context = {
    'subjects': subjects,
    'st_hours': st_hours,
  }
  return render(request, 'subject/semester1.html', context)


def register_second_semseter(request):
  if "id" not in request.session:
    return redirect('accounts:login')
  subjects = Subject.objects.filter(semester_number=2)
  global st_hours
  st_hours = 0
  for sub in subjects:
    st_sub = Subject_Student.objects.filter(subject=sub.id, student=request.session['id'])
    if len(st_sub) == 1:
      sub.reg = True
      st_hours += sub.number_of_hours
    else:
      sub.reg = False
  context = {
    'subjects': subjects,
    'st_hours': st_hours,
  }
  return render(request, 'subject/semester2.html', context)


def register(request, pk, sem_num):
  if "id" not in request.session:
    return redirect('accounts:login')
  subject = get_object_or_404(Subject, pk=pk)
  global st_hours
  if subject.number_of_hours + st_hours > 100:
    if sem_num == '1':
      messages.error(request, 'your maximum hours can not be greater than 100 hours')
      return redirect('subject:semester_1')
    else:
      messages.error(request, 'your maximum hours can not be greater than 100 hours')
      return redirect('subject:semester_2')
  student = get_object_or_404(Student, pk=request.session['id'])
  sub_st = Subject_Student(student=student, subject=subject, semester_number=sem_num)
  sub_st.save()
  if sem_num == '1':
    return redirect('subject:semester_1')
  else:
    return redirect('subject:semester_2')


def unregister(request, pk, sem_num):
  if "id" not in request.session:
    return redirect('accounts:login')
  subject = get_object_or_404(Subject, pk=pk)
  student = get_object_or_404(Student, pk=request.session['id'])
  sub_st = get_object_or_404(Subject_Student, student=student, subject=subject, semester_number=sem_num)
  print(sub_st)
  sub_st.delete()
  if sem_num == '1':
    return redirect('subject:semester_1')
  else:
    return redirect('subject:semester_2')

