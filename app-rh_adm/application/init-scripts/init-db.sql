-- Vérifier si la base nextcloud existe avant de la créer
CREATE DATABASE nextcloud
    WITH OWNER = nextcloud
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;



