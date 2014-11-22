import os
import sys

path = '/var/www/html/betterhomepage/'
sys.path.append(path)

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "betterhomepage.settings")

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
