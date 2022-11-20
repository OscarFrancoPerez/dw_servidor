from django.shortcuts import get_object_or_404, render
from django.http import HttpResponseRedirect
from .models import Question, Choice
from django.views import generic
from django.urls import reverse

# Create your views here.

def IndexView(generic.ListView):
	template_name = 'polls/index.html'
	context_object_name = 'latest_question_list'

	def get_queryset(self):
	"""Return the last five published questions."""
	return Question.objects.order_by('-pub_date')[:5]

def DetailView(generic.DetailView):
	model = Question
	template_name = 'polls/detail.html'

def ResultsView(generic.DetailView):
	model = Question
	template_name = 'polls/results.html'

def vote(request, question_id):
	model = Question
	template_name = 'polls/results.html'
