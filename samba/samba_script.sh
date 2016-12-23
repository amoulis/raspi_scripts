#!/bin/bash

# install samba
sudo apt-get install samba samba-common-bin

# add password
sudo smbpasswd -a pi

# conf
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old

# TODO modify the conf

# restart services
sudo service smbd restart
sudo service nmbd restart
