DICT=(CAE AP90 AP BEN BHS BOP BUR CCS GRA GST IEG INM KRM MCI MD MW72 MW PD PE PGN PUI PWG PW SCH SHS SKD SNP STC VCP VEI WIL YAT)
#DICT=(MW)
rm -rf afem.txt
# MW grep
echo '<?xml version="1.0" encoding="UTF-8"?>' > afem/mw_afem.xml
echo '<mw>' >> afem/mw_afem.xml
grep 'a</key1>.*</key2></h><body>[ ]*<lex>f\.</lex>' ../../../../mw/mwxml/xml/mw.xml >> afem/mw_afem.xml
echo '</mw>' >> afem/mw_afem.xml
# PW grep
echo '<?xml version="1.0" encoding="UTF-8"?>' > afem/pw_afem.xml
echo '<pw>' >> afem/pw_afem.xml
grep 'a</key1>.*</key2></h><body><gram n="f">f\.' ../../../../pw/pwxml/xml/pw.xml >> afem/pw_afem.xml
echo '</pw>' >> afem/pw_afem.xml
# CAE grep
echo '<?xml version="1.0" encoding="UTF-8"?>' > afem/cae_afem.xml
echo '<cae>' >> afem/cae_afem.xml
grep 'a</s>[ ]*·f\. [^<]' ../../../../cae/caexml/xml/cae.xml >> afem/cae_afem.xml
echo '</cae>' >> afem/cae_afem.xml
# AP90 grep
echo '<?xml version="1.0" encoding="UTF-8"?>' > afem/ap90_afem.xml
echo '<ap90>' >> afem/ap90_afem.xml
grep 'a</key2></h><body><i>f\.</i>' ../../../../ap90/ap90xml/xml/ap90.xml >> afem/ap90_afem.xml
echo '</ap90>' >> afem/ap90_afem.xml
# ap grep
echo '<?xml version="1.0" encoding="UTF-8"?>' > afem/ap_afem.xml
echo '<ap>' >> afem/ap_afem.xml
grep 'a</key1>.*<body><s>[a-zA-Z]*</s>[ ]*<i>f.</i>' ../../../../ap/apxml/xml/ap.xml >> afem/ap_afem.xml
echo '</ap>' >> afem/ap_afem.xml

# Keeping only the headword:dictcode detail and storing in afem.txt
python afem.py
echo 
echo '##See afem.txt for output##'