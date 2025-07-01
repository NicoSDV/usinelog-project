FROM odoo:17.0

# Installer les dépendances (si nécessaire)
USER root
RUN apt-get update && apt-get install -y python3-pip \
    && pip3 install --upgrade pip \
    && pip3 install fsspec>=2024.5.0 \
    && pip3 install webdav4


# Créer le dossier des addons
RUN mkdir -p /mnt/extra-addons

# Copier les modules personnalisés (ici Payroll)
COPY custom_addons/payroll /mnt/extra-addons/payroll
COPY custom_addons/dms /mnt/extra-addons/dms
COPY custom_addons/fs_storage /mnt/extra-addons/fs_storage
COPY custom_addons/fs_attachment /mnt/extra-addons/fs_attachment
COPY custom_addons/server_environment /mnt/extra-addons/server_environment


# Changer les permissions pour Odoo
RUN chown -R odoo:odoo /mnt/extra-addons/
USER odoo

# Spécifier le chemin des addons et préinstaller Payroll & DMS
CMD ["odoo", "--init=payroll,dms,fs_storage,fs_attachment,server_environment", "--addons-path=/mnt/extra-addons,/usr/lib/python3/dist-packages/odoo/addons"]