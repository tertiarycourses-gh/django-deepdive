from django.urls import path
from . import views

urlpatterns = [
    path('my-polls/', views.polls_page, name='polls_page'),
]