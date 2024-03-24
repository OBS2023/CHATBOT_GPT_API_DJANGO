

# Appliquer les migrations de la base de données
echo "Apply database migrations"
python manage.py migrate

# Démarrer le serveur
echo "Starting server"
python manage.py runserver
