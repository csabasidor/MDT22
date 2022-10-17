SELECT outcome 

FROM (



SELECT 'Príslušnosť člesnkých samospráv OOCR podľa Regionalizácie CR: ' outcome, 0



	UNION ALL



	SELECT '	' ||  "regionCRName" || ' RCR, počet samospráv (' || n || ')', n 

		FROM (

				SELECT "skRegionsCR".regionCRName , COUNT(*) n

				FROM "skRegionsCR", "skDmosMemberBoundaries"

				WHERE "skDmosMemberBoundaries".dmo_id = 32 AND "skDmosMemberBoundaries".idn4 = "skRegionsCR".idn4 AND "skDmosMemberBoundaries".idn3 = "skRegionsCR".idn3

				GROUP BY "skRegionsCR".regionCRName

			) foo

	UNION ALL 


	SELECT  'Iné OOCR pôsobiace v príslušnom regióne CR', 0

	

	UNION ALL 

	
	SELECT '	' || regionCRName || ' RCR - ' || dmo_name || ' (počet samospráv z RCR: ' || n, 0

	FROM (

			SELECT regionCRName, dmo_name, COUNT(*) n

				FROM "skRegionsCR",

					(

						SELECT DISTINCT(regionCRName) pairName, dmo_id pairID

						FROM  "skRegionsCR" 

						WHERE dmo_id = 32) foo

				WHERE dmo_id <> foo.PairID AND foo.pairName  = "skRegionsCR".regionCRName

				GROUP BY regionCRName, dmo_name

			) bar



	UNION ALL

	SELECT outcome || ' (Počet samospráv: ' || n || ').' outcome, n

		FROM (

				SELECT 'Príslušnosť NUTS 2: ' ||  nm2 || ' samosprávny kraj' outcome, COUNT(*)n

				FROM "skDmosMemberBoundaries"

				WHERE dmo_id = 32

				GROUP BY nm2

			) foo



	UNION ALL



	SELECT 'Príslušnosť LAU1/LAU2: ', 0



	UNION ALL



	SELECT '	' || districts || ' (' || n || '): ' || municipalities || '.' outcome, n 

		FROM (

				SELECT  'Okres ' || nm3 ||  ', Samosprávy' districts, Group_Concat(nm4) municipalities, COUNT(*)n

				FROM "skDmosMemberBoundaries"

				WHERE dmo_id = 32

				GROUP BY  nm3

			) foo

		

	UNION ALL



	



	SELECT 'Pokrytie DMO v príslušných okresoch: ', 0

			

	UNION ALL 		



	SELECT '	' ||  outcome || ': ' ||  nDmo || ' z ' || nRcr || ' samospráv (' || ROUND((to_real(nDmo) / to_real(nRcr))*100,2)  || ' %); ' ||  areaDmoSQKM || ' sqkm z ' ||  areaRcrSQKM || ' sqkm (' || ROUND((to_real(areaDmoSQKM) / to_real(areaRcrSQKM))*100,2) || ' %)' outcome, 0

		FROM (

				SELECT * 

					FROM (

							SELECT 'Okres ' || nm3 outcome, count(*) "nDmo", ROUND(sum(vymera)/1000000,2) "areaDmoSQKM"

							FROM "skDmosMemberBoundaries"

							WHERE "skDmosMemberBoundaries".dmo_id = 32

							GROUP BY outcome

							ORDER BY outcome

						)



				LEFT JOIN

						(

							SELECT 'Okres ' || "skRegionsCR".nm3 outcome, count(*) "nRcr" , ROUND(sum(vymera)/1000000,2) "areaRcrSQKM"

							FROM "skRegionsCR"

							GROUP BY outcome

							ORDER BY outcome



						)

				USING(outcome)

			) foo



			

	UNION ALL



	SELECT 'Iné OOCR pôsobiace v príslušných okresoch: ',0



	UNION ALL

	

	SELECT '	Okres ' || nm3 || ' - ' || dmo_name, 0

	FROM (

			SELECT DISTINCT(nm3),  dmo_name

			FROM "skDmosMemberBoundaries" , 

				 (	

					SELECT DISTINCT(idn3) 

					FROM "skDmosMemberBoundaries"  

					WHERE dmo_id = 32

				 ) foo

			WHERE "skDmosMemberBoundaries".dmo_id  <> 32  AND  "skDmosMemberBoundaries".idn3 = foo.idn3

			GROUP BY "skDmosMemberBoundaries".nm3

		) foo



	

	

	

	

	

	UNION ALL



	SELECT 'OOCR s vonkajšími hranicami do 15 km (vzdušnou čiarou): ', 0



	UNION ALL



	SELECT * 

	FROM ( 

			SELECT '	' || bar.dmo_name || ' ('  || ROUND(to_real(st_distance(foo.multipolyfoo, bar.multipolybar))/1000,2) || ' km)', ROUND(to_real(st_distance(foo.multipolyfoo, bar.multipolybar))/1000,2)

			FROM (

					SELECT dmo_name, st_union(geometry) multipolyfoo

					FROM "skDmosMemberBoundaries" 

					WHERE dmo_id = 32

					GROUP BY dmo_name	

				) foo,

				(

					SELECT dmo_name, st_union(geometry) multipolybar

					FROM "skDmosMemberBoundaries" 

					WHERE dmo_id <> 32

					GROUP BY dmo_name

				) bar

			WHERE ROUND(to_real(st_distance(foo.multipolyfoo, bar.multipolybar))/1000,2) <= 15

			ORDER BY ROUND(to_real(st_distance(foo.multipolyfoo, bar.multipolybar))/1000,2)

		) FOO

	)



	

	




	

	

	