FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY django_service.conf /etc/nginx/sites-available/

RUN mkdir -p /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/django_service.conf /etc/nginx/sites-enabled/
