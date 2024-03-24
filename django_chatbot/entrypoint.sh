

# Appliquer les migrations de la base de données
echo "Apply database migrations"
python manage.py migrate


echo "Starting server"
python manage.py runserver
