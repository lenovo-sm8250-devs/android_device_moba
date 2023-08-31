#!/vendor/bin/sh

# Our Fstab Path
FILE=/vendor/etc/fstab.default

# Check if it is present or not
if [ -f "$FILE" ]; then
    echo "FSTAB exists at vendor/etc." >> /vendor/fstab_test
else 
    echo "FSTAB does not exist at vendor/etc." >> /vendor/fstab_test
fi