
# step 1~3 build backend service
# step 1: use docker-compose build django project
docker-compose run backend django-admin.py startproject core ./backend

# step 2: change permission
sudo chown -R $USER:$USER .

# step 3: change django db connection
vim backend/core/settings.py

: <<BLOCK
# modify django ALLOWED_HOSTS
ALLOWED_HOSTS = ['*']

# modify db connection information
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'password123',
        'HOST': 'db',
        'PORT': 5431,
    }
}
BLOCK

# step 4~X build frontend app (react)
# step 4: user docker-compose build react app frontend(project name)
docker-compose run frontend npx create-react-app frontend

# step 5: change permission
sudo chown -R $USER:$USER .

# step 6: movie content
mv frontend/frontend/* frontend/ && rm -r frontend/frontend

# step 7: modify your package.json
vim frontend/app/package.json

# step final:  docker-compose up images
docker-compose up -d db
docker-compose up -d backend frontend

