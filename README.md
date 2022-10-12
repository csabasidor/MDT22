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
1. Z priečinka [data](https://github.com/csabasidor/MDT22/tree/main/data) si stiahnite súbory:
    a. [skDmosMemberBoundaries.geojson](https://github.com/csabasidor/MDT22/raw/main/data/skDmosMemberBoundaries.geojson)
    b. 
2. Otvorte u seba QGis, vytvorte nový projekt pod nazvom 0_dmo_boundaries_id Vasej OOCR (e.g. 0_dmo_boundaries_17).
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

![alt text](https://github.com/csabasidor/MDT22/blob/main/podklady/setColorsViaPythonConsole.png?raw=true)  

