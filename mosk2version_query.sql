select c.city_id as `код города`, c.title_ru as `название города`, reg.title_ru as `регион`, coun.title_ru as `страна`
from _cities as c
left join _regions as reg on c.region_id = reg.region_id
join _countries as coun on coun.country_id = c.country_id
where coun.title_ru like ("Росс%") and reg.title_ru like ("Московска%")
group by reg.title_ru, c.city_id, c.title_ru
order by reg.title_ru, c.title_ru;
