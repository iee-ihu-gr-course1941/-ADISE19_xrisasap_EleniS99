mysqldump adise_xrisa_eleni -u root -R  > basi.sql
"E:\Program Files\Git\usr\bin\sed.exe" -i -r "s/DEFINER=`[^`]*`@`[^`]*`//g" basi.sql
