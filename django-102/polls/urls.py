from django.urls import path
from . import views

urlpatterns = [
    path('my-polls/', views.polls_page, name='polls_page'),
    path('my-polls-1/', views.polls_page_one, name='polls_page_one'),
    path('my-polls-2/', views.polls_page_two, name='polls_page_two'),
]