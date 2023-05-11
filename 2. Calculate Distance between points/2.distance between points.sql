SELECT ST_DistanceSphere
(ST_MakePoint (
	(SELECT longitude FROM ne_110m_populated_places WHERE name = 'Vatican City' LIMIT 1),
	(SELECT latitude FROM ne_110m_populated_places WHERE name = 'Vatican City' LIMIT 1)),
                         
 ST_MakePoint (
	 (SELECT longitude FROM ne_110m_populated_places WHERE name = 'San Marino' LIMIT 1),
	 (SELECT latitude FROM ne_110m_populated_places WHERE name = 'San Marino' LIMIT 1)))/1000 
			  AS distance_in_KM;
