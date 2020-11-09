select c.city_id as `код города`, c.title_ru as `название города`, reg.title_ru as `регион`
from _cities as c
join _regions as reg on c.region_id = reg.region_id
where reg.title_ru like ("Московская%")
group by reg.title_ru, c.city_id, c.title_ru
order by reg.title_ru, c.title_ru;