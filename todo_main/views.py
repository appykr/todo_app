
from django.shortcuts import render
from todo.models import Task

def home(request):
    tasks = Task.objects.filter(is_completed=False).order_by('-updated_at')
    completed_tasks = Task.objects.filter(is_completed=True).order_by('-created_at')
    print(completed_tasks)
    context = {
        'tasks' : tasks,
        'completed_task' : completed_tasks
    }
    return render(request, 'home.html', context)