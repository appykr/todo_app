from django.contrib import admin
from unfold.admin import ModelAdmin
from . models import Task

# Register your models here.
class TaskAdmin(ModelAdmin):
    list_display=('task', 'is_completed', 'updated_at')
    search_fields = ('task',)
admin.site.register(Task, TaskAdmin)