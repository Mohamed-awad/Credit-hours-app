from django.conf.urls import url
from .views import *

app_name = 'subject'

urlpatterns = [
  url(r'semester/$', semester, name='semester'),
  url(r'semester/1/$', register_first_semseter, name='semester_1'),
  url(r'semester/2/$', register_second_semseter, name='semester_2'),
  url(r'unregister/(?P<pk>\d+)/(?P<sem_num>\d+)$', unregister, name='unregister'),
  url(r'register/(?P<pk>\d+)/(?P<sem_num>\d+)$', register, name='register'),
]
