# Collecte des fichiers statiques
#echo "Collect static files"
#python manage.py collectstatic --noinput

# Appliquer les migrations de la base de données
echo "Apply database migrations"
python manage.py migrate

# Démarrer le serveur
echo "Starting server"
python manage.py runserver 0.0.0.0:8000
