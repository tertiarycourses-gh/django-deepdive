from django.http import HttpResponse


def orders_page(request):
    return HttpResponse("Hello, Stephen. You're at the orders page.")