mysqldump ADISE19_xrisasap_EleniS99 -u root -R  > basi.sql
"E:\Program Files\Git\usr\bin\sed.exe" -i -r "s/DEFINER=`[^`]*`@`[^`]*`//g" basi.sql
