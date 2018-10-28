#!/bin/bash
echo "Correction probleme DNS: resolv.conf doit etre un lien"
echo "Avant"
ls -l /etc/resolv.conf
sudo rm /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc
echo "Apres"
ls -l /etc/resolv.conf

