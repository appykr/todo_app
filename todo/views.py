from django.shortcuts import render, redirect, get_object_or_404
from . models import Task

# Create your views here.
def addTask(request):
    task = request.POST['task']
    Task.objects.create(task=task)
    return redirect('home')

def mark_as_done(request, pk):
    get_task = get_object_or_404(Task, pk=pk)
    get_task.is_completed = True
    get_task.save()
    return redirect('home')

def mark_as_undone(request, pk):
    get_task = get_object_or_404(Task, pk=pk)
    get_task.is_completed = False
    get_task.save()
    return redirect('home')

def delete_task(request, pk):
    get_task = get_object_or_404(Task, pk=pk)
    get_task.delete()
    return redirect('home')

def edit_task(request,pk):
    get_task = get_object_or_404(Task, pk=pk)
    if request.method == 'POST':
        new_task = request.POST['task']
        get_task.task = new_task
        get_task.save()
        return redirect('home')
    else:
        context = {
            'get_task': get_task,
        }
        return render(request, 'edit_task.html', context)