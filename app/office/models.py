from django.db import models

class Member(models.Model):
    username = models.CharField(max_length=50)
    email = models.EmailField()

class Notice(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title