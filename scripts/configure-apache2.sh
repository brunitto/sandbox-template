#!/bin/bash

# Backup configuration files
sudo cp /etc/apache2/ports.conf /etc/apache2/ports.conf.default

# Copy required configuration files
sudo cp /tmp/ports.conf /etc/apache2/ports.conf
sudo cp /tmp/001-quickstart.conf /etc/apache2/sites-available/001-quickstart.conf

# Enable quickstart site
sudo a2ensite 001-quickstart

# Reload apache2 service
sudo systemctl reload apache2

# Clean
sudo rm /tmp/ports.conf /tmp/001-quickstart.conf
