from django.conf.urls import url
from .views import *

app_name = 'accounts'

urlpatterns = [
    url(r'login/$', login, name='login'),
    url(r'logout/$', logout, name='logout'),
    url(r'signup/$', sign_up, name='signup'),
]
