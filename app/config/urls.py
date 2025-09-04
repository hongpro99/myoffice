from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path("admin/", admin.site.urls),
    path('office/', include('app.office.urls')),  # 앱 내부 URL
]
