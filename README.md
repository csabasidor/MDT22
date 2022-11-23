# MDT22

## CHALLENGE WEEK 1 (29. - 30.9.2022)
1. V spoločnom [Goolge Drive](https://www.google.com/drive/) si vytvoríte folder s názvom MDT22.
2. Každý študent si v priečinku (MDT22) vytvorí vlastný priečinok s názvom vo formáte ID priradenej organizácie_Priezvisko bez diakritiky_Prvé písmeno Mena (napr. <b>01_Horvath_I</b>). ID priradených organizácií nájdete v súbore [sk_dmos_260922.csv](podklady/sk_dmos_260922.csv)
3. Následne teamleader skupiny "sharne" folder <b>MDT22</b>.
4. Každý si skontroluje či má funkčný Microsoft Word, Microsoft Excel ak nemá postupuje podľa [pokynov ÚVT](https://uvt.tuke.sk/wps/portal/uv/software/microsoft-office365).
5. Každý si stiahne a nainštaluje [QGIS](https://www.qgis.org/en/site/forusers/download.html).
6. Každý si stiahne a nainštaluje písmo [Typewolf Roboto](https://www.typewolf.com/assets/fonts/roboto.zip).


<h4>DEADLINE 04.10.2022 23:59:59 CET</h4>

## CHALLENGE WEEK 2 (5. - 6.10.2022) - Home Office
Dekanské voľno



## CHALLENGE WEEK 3 (12. - 13.10.2022)
0. Ak sa Vám zobrazí súbor v surovom formáte, stlačte "Ctrl+a", následne "Ctrl+c". Otvorte prázdny súbor v poznámkovom bloku a stlačte "Ctrl+v". Uložte súbor s príslušnou koncovkou a vo formáte "Všetky súbory/All files" s encodingom UTF-8. 
1. Z priečinka [data](https://github.com/csabasidor/MDT22/tree/main/data) si stiahnite súbory:
    a. [skDmosMemberBoundaries.geojson](https://github.com/csabasidor/MDT22/blob/main/data/skDmosMemberBoundaries.geojson)
    b. 
2. Otvorte u seba QGis, vytvorte nový projekt pod nazvom 0_dmo_boundaries_id Vasej OOCR (e.g. 0_dmo_boundaries_17.qgz). V tomto ".qgz" projekte tvoríte mapy z jednotlivých vrstiev.
3. Pridanie podkladovej mapy OpenStreetMap:  
      
     3a. V QGise stlačte "Ctrl+Shift+D".  
     3b. V kontextovom okienku kliknite v ľavom zozname na položku "XYZ" (Viď Obr. STEP 1).  
     3c. Kliknite na tlačidlo "New" (Viď obr STEP 2).  
     3d. Do kolónky Name napíšte "OpenStreetMap" (Viď obr. STEP 3).  
     3e. Do kolóky URL skopírujte url adresu bez "" -> "https://a.tile.openstreetmap.org/{z}/{x}/{y}.png" (Viď obr. STEP 4).  
     3f. Kliknite na tlačidlo "Ok" (Viď obr. STEP 5).  
     3g. Kliknite na tlačidlo "Add" (Viď obr. STEP 6).  
     3h. Vypnite kontextové okienko (Viď obr. STEP 7).  
         
   ![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/AddOpenStreetMapBaseMap.png?raw=true)  
   
4. Pridanie hraníc OOCR (vektorovej vrstvy):   

     4a. V QGise stlačte "Ctrl+Shift+V".  
     4b. Uistite sa, že ste v časti Vector (Viď Obr. STEP 1).  
     4c. Klinkinte na tlačidlo s "...", nachádzajúce sa vpravo od prázdnej kolonky (Viď Obr. STEP 2).  
     4d. Vyberte Vami uložený súbor skDmosMemberBoundaries.geojson (Viď Obr. STEP 3).  
     4e. Kliknite na tlačidlo "Add"(Viď Obr. STEP 4).  
     4f. Kliknite na tlačidlo "Close" (Viď Obr. STEP 5).  
     
     ![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/AddVectorlayer.png?raw=true)  
     
 5. Potrebná úprava CRS vektorovej vrstvy (hranice OOCR)  
     5a. V zozname zobrazených vrstiev (vľavo), kliknite pravým tlačítkom myši na názov vrstvy "skDmosMemberBoundaries" (Viď Obr. STEP 1).  
     5b. Kliknite na "Properties" (Viď Obr. STEP 2).  
     5c. V kontextovom okienku, na ľavej lište kliknite na tlačidlo "Source" (Ozubené koliesko s kľúčom -> Viď Obr. STEP 3).  
     5d. Kliknite vpravo na tlačidlo "Select CRS" (Zemeguĺa s klobúkom -> Viď Obr. STEP 4).  
     5e. Do kolónky "Filter" napíšte hodnotu 102067 (Viď Obr. STEP 5).  
     5f. Kliknite na požadované CRS (Viď Obr. STEP 6).  
     5g. Kliknite na tlačidlo "Ok" (Viď Obr. STEP 7).  
     5h. Kliknite na tlačidlo "Apply" (Viď Obr. STEP 8).   
     5i. Kliknite na tlačidlo "Ok" (Viď Obr. STEP 9).  
     5k. Opakujte krok 5b a kliknite na položku "Zoom to Layer" (Viď Obr. STEP 10).  
     
 ![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/setCRSKrovak.png?raw=true)  
     
6. Hromadná grafická úprava vektorovej vrstvy (hranice OOCR, pozor CASE SENSITIVE)  
    6a. Otvoríte súbor [addColorFromAtributeTable.txt](https://raw.githubusercontent.com/csabasidor/MDT22/main/podklady/addColorFromAtributeTable.txt), stlačíte "Ctrl+a" a následne "Ctrl+c".  
    6b. Vo Vašom QGis projekte sa uistite, že z vektorových vrstiev je "skDmosMemberBoundaries" zapnutá (Viď Obr. HINT 1)  stlačíte "Ctrl+Alt+p".  
    6c. Kliknete do prikázoveho riadku (Viď Obr. STEP 1), stlačíte "Ctrl+v" a počkáte kým sa vykonajú príkazy (Viď Obr. HINT 2: Zmena kategorizacie, HINT 3: Zmena farebnosti vrstvy).  

![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/SetColorsViaPythonConsole.png?raw=true) 

7. Pridanie podmienených popisiek vektorovej vrstvy (hranice OOCR)  
    7a. V zozname zobrazených vrstiev (vľavo), kliknite pravým tlačítkom myši na názov vrstvy "skDmosMemberBoundaries" (Opakuj bod 5a).  
    7b. Kliknite na "Properties" (Opakuj bod 5b). 
    7c. V kontextovom okienku, na ľavej lište kliknite na tlačidlo "Control Feature Labeling" (žltý štítok abc -> Viď Obr. STEP 1).  
    7d. V kontextovom okienku, z horného rolovacieho zoznamu vyberiete "Rule-based Labeling" (Viď Obr. STEP 2).  
    7e. V kontextovom okienku, kliknete na tlačidlo "+" (Viď Obr. STEP 3).  
    7f. V novotvorenom kontextovom okienku do kolónky "Filter" skopírujete "member_name LIKE 'Mesto%'" (Viď Obr. STEP 4).  
    7g. V kontextovom okienku do kolónky "Value" skopírujete "member_name" (Viď Obr. STEP 5).  
    7h. V kontextovom okienku z rolovaciaceho zoznamu "Font" vyberiete hodnotu "Roboto" (Viď Obr. STEP 6).  
    7i. V kontextovom okienku z rolovaciaceho zoznamu "Style" vyberiete hodnotu "Thin" (Viď Obr. STEP 7).  
    7k. V kontextovom okienku kliknete tlačidlo "Ok" (Viď Obr. STEP 8).  
    7l. V kontextovom okienku kliknete tlačidlo "Apply" (Viď Obr. STEP 9) a následne na tlačidlo "Ok" (Viď Obr. STEP 10).  
    
![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/AddLabelsCondtional.png?raw=true) 

8. Pridanie a rozšírenie vektorových vrstievt typu .gpk (Regionalizácia CR, okresy SR, kraj SR)  
    8a. Z geoprotálu (Geodetický a kartografický ústav Bratislava, 2021) si stiahnete [zip s administratívnym usporiadaním Slovenskej republiky](https://www.geoportal.sk/files/zbgis/na_stiahnutie/gpkg/ah_gpkg_0.zip).  
    8b. Stiahnutý ah_gpkg_0.zip otvoríte a jeho obsah súbor "USJ_hranice_0.gpkg" rozbalíte do priečinka, v ktorom udržiavate vstupné údaje (NIE NA GOOGLE DRIVE).  
    8c. Vo svojom Qgis projekte, na hornej lište kliknete na "View" (Viď Obr. STEP 1), v konextovom zozname kliknete na "Panels" (Viď Obr. STEP 2), odkliknete "Browser" (Viď Obr. STEP 3).  
    8d. V okienku "Browser" kliknete pravým tlačidlom myši na "GeoPackage" (Viď Obr. STEP 4) a následne na "New Connection" (Viď Obr. STEP 5).  
    8e. Označíte stiahnutý súbor "USJ_hranice_0.gpkg" (Viď Obr. STEP 6) a otvoríte ho (Viď Obr. STEP 7).  
    8f. Na hornej lište kliknete na "Database" (Viď Obr. STEP 8) a následne na "DB Manager"(Viď Obr. STEP 9).
    
    ![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/addGpkgOpenDBManager.png?raw=true)  
    
    
    8g. V kontextovom okienku "DB Manager" kliknete na v ľavom zozname na "GeoPackage" (Viď Obr. STEP 1), následne na "USJ_hranice_0.gpkg" (Viď Obr. STEP 2) a následne v hornej lište na "SQL Window" (Viď Obr. STEP 3).
    8h. Cez "Ctrl+A" a "Ctr+c" skopírujte obsah linku [alterGpkLoadResulLayer.txt](https://raw.githubusercontent.com/csabasidor/MDT22/main/podklady/alterGpkLoadResulLayer.txt) a cez "Ctrl+v" ich prilepíte do kontextového okienka "DB Manager" (Viď Obr. STEP 4), následne postupujte podľa prilepeného textu.  
    8k. Po spustentí posledného SQL príkazu, "odfajknete" "Load new layer" (STEP 5), Vyberiete "IDN4" ako "Column with unique value" (STEP 6), nastavíte názov vrstvy ako "skRegionsCR" (STEP 7) a stlačíte "Load" (STEP 8).   
    
    ![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/copyPasteScript.png?raw=true)  
    
    8l. Podobne ako v kroku 6 skopírujete obsah súboru [addColorFromAtributeTableSkRegionCR.txt](https://raw.githubusercontent.com/csabasidor/MDT22/main/podklady/addColorFromAtributeTableSkRegionCR.txt) a počkáte kým Vám zbehnú príkazy. Mali by ste mať farebnú kategorizáciu Regionalizácie CR.
    
9. Pridanie nomenklatúry NUTS3 a LAU2 (vrstvy typu gpkg)  
    9a. V okienku "Browser" (Pozri krok 8c a 8d) kliknete na "USJ_hranice_0.gpkg" (STEP 1) a následne dvojklikom pridáte pridáte vrstvy "kraj_0" a "okres_0" (STEP 2).  
    9b. Pre vrstvu "okres_0" klikaním nastavíte farbu polygónu a typ ohraničenia (STEP 3 - STEP 10). Následne, až na dve zmeny identicky upravíte aj vrstvu "kraj_0" (Viď Obr. časť kraj_0) 
    
![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/clickChangeVectorFill.png?raw=true)  

10.Tvorba vonkajších hraníc OOCR     
    10a. Otvoríte "DM Manager" (Pozri 8f), kliknete v vľavom zozname na položku "Virtual Layer" a následne na "Project Layers", otvoríte "SQL Window" (Viď 8g).  
    10b. Do príkazového riadku prilepíte príkaz <code> SELECT st_union(geometry) FROM "skRegionsCR" WHERE dmo_id = 32;</code> a prepíšete hodnotu dmo_id podľa svojho zadania.  
    10c. Po spustení príkazu, podpobne ako v kroku 8k, pridáte vytvorenú vrstvu do mapy.  
    10d. Podobne ako v krokoch 9a,b nastavte pre vytvorenú vrstvu transparentnú náplň a ohraničenie červenej farby o hrúbke 0.46.
    
11. Základná interpretácia mapy  
    11a. Skopírujte obsah súboru [exportBoundariesBaseInfo.sql](https://raw.githubusercontent.com/csabasidor/MDT22/main/podklady/exportBoundariesBaseInfo.sql) a prilepte ho do prázdneho Poznámkového bloku.   
    11b. S kurzorom sa kliknite do prvého riadku, stlačte "Ctrl+H". V kontextovom okienku, do kolónky "Find what" napíšte 32 a do kolónky "Replace with" napíšte číslo Vašej OOCR, kliknite na "Replace all".    
    11c. Opakujte krok 10a.  
    11d. Skopírujte obsah príkazu a prilepte ho do rozhrania "SQL Window", spustite príkaz (Vyčkajte približne 45 sec na dokončenie príkazu).  
    11e. Označte celý vytvorený stĺpec a skopírujte si ho do wordu. Overte či vygenerované poznámky sú v súlade s Vašou mapou.

12. Tvorba tlačovej zostavy a export mapy  
    Ukážka na cvičení.

![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/0_dmo_bordersb.png?raw=true)  

## CHALLENGE WEEK 9 (23. - 24.11.2022) 
#### Podiel DMO na registrovanej ekonomike CR územia destinácie
1. Stiahnite si súbor [mdtDMOsRegisteredEconomy2021.xlsx](https://github.com/csabasidor/MDT22/blob/main/data/mdtDMOsRegisteredEconomy2021.xlsx).
2. Meta údaje k datasetu:  
    **dmo_id** - Identifikátor OOCR
    **region_name** - Názov VÚC  
    **district_name** - Názov okresu  
    **municipality_id** - Identifikátor obce    
    **municipality_name** - Názov obce  
    **nace_name_sk** - Názov NACE  
    **legal_form_name_sk** - Názov právnej formy    
    **ownership_type_name_sk** - Názov formy vlastníctva  
    **eu_tour** - Kategória ekonomiky CR podľa metodiky Eurostat  
    **unwto_oecd_tour**  - Kategória ekonomiky CR podľa metodiky UNWTO/OECD    
    **n** - Počet živých účtovných jednotiek 
    **min_emp** - Minimálna možná zamestnanosť
    **max_emp** - Maximálna možná zamestnanosť  
 3. Prostredníctvom hodnoty **dmo_id** vyberte údaje za svoju OOCR a odpovedzte na otázky:
    a. Koľko podnikov tvorí registrovanú ekonomiku územia destinácie ?
    b. Aká je minimálna a maximálna možná zamestnanosť v území desitnácie ?
    c. Určite TOP 10 odvetví podľa NACE podľa počtu podnikov.
    d. Určite TOP 10 odvetví podľa NACE podľa minimálnej možnej zamestnanosti.
    e. Určite TOP 10 odvetví podľa NACE podľa maximálnej možnej zamestnanosti.
    


