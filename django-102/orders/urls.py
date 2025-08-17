from django.urls import path
from . import views

urlpatterns = [
    path('my-orders/', views.orders_page, name='orders_page'),
]