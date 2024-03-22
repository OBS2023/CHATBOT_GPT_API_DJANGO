from django.http import JsonResponse
from django.shortcuts import render
import os
import openai
from openai import Completion

# Récupération la clé d'API à partir de la variable d'environnement
openai.api_key = os.environ['OPENAI_API_KEY']



def ask_openai(message):
    response = openai.ChatCompletion.create(
        model="gpt-3.5-turbo",
        messages=[
            {"role": "assistant", "content": message}
        ]
    )
    answer = response.choices[0].message["content"].strip()  
    return answer

def chatbot(request):
    if request.method == 'POST':
        message = request.POST.get('message')
        response = ask_openai(message)
        return JsonResponse({
            'message': message, 
            'response': response
        })
    return render(request, 'chatbot/chatbot.html')
