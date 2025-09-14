######### This is where you write the code/logic for your views #########

from django.http import HttpResponse

def polls_page(request):
    return HttpResponse("Page 0.")

def polls_page_one(request):
    return HttpResponse("Page 1.")

def polls_page_two(request):
    return HttpResponse("Page 2.")
