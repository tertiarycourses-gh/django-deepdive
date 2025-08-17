######### This is where you write the code/logic for your views #########

from django.http import HttpResponse

def polls_page(request):
    return HttpResponse("Hello, Stephen. You're at the polls page.")



