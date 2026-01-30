#! /bin/bash
set -e

NAME=BringOutSubmenuOfPowerOffLogoutButton
DOMAIN=pratap.fastmail.fm
UUID=$NAME@$DOMAIN
ZIP_NAME=$UUID.zip

cd src/v-45-46-47-48-49

echo -e "Creating zip file..."
zip -qr $ZIP_NAME ./* && echo -e "\t3. zip file created"

echo -e "Installing the extension from the zip file...\n"

gnome-extensions install -f $ZIP_NAME
rm -rf $ZIP_NAME

exit 0
