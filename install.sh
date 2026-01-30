#! /bin/bash
set -e

NAME=BringOutSubmenuOfPowerOffLogoutButton
DOMAIN=pratap.fastmail.fm
UUID=$NAME@$DOMAIN
ZIP_NAME=$UUID.zip

cd src/v-45-46-47-48-49

echo -e "\t2. Creating zip file..."
zip -qr $ZIP_NAME ./* && echo -e "\t3. zip file created"

echo -e "\t4. Installing the extension from the zip file...\n"

gnome-extensions install -f $ZIP_NAME
rm -rf $ZIP_NAME

echo -e "\t------------------------------------------
\t| Bring Out Submenu Of Power Off Button Extension is installed |
\t------------------------------------------

\tNow please enable the extension, once extension is enabled then
\tYou can show/hide buttons as you wish from extensions settings"
echo -e "\n\t~~~~~~~~~~~~~~~~~~ Thank You ~~~~~~~~~~~~~~~~~~\n"
exit 0
