select county_name,region_name, avg(ave_fam_size) as average_family_size
from fooddata
where ave_fam_size is not null
group by county_name,region_name

select county_name,region_name, ave_fam_size
from fooddata
where region_name = 'Northeast Sierra'

select race_eth_name, avg(median_income) as average_income
from fooddata
where median_income <> 0
group by race_eth_name

select county_name,region_name, avg(cost_yr) as Average_cost_per_year,avg(affordability_ratio)
from fooddata
where cost_yr is not null
group by county_name,region_name

select county_name,region_name, avg(LL95_affordability_ratio) as Average_LL95,avg(UL95_affordability_ratio) as Average_UL95
from fooddata
--where cost_yr is not null
group by county_name,region_name

select county_name,region_name, avg(se_food_afford) as Average_se,avg(rse_food_afford) as Average_rse
from fooddata
--where cost_yr is not null
group by county_name,region_name

select county_name,region_name,max(affordability_ratio) as most_affordable,max(median_income) as max_income,
max(cost_yr) as max_cost_per_year,max(LL95_affordability_ratio) as max_LL95,max(UL95_affordability_ratio) as max_UL95,
max(se_food_afford) as max_se,max(rse_food_afford) as max_rse
from Fooddata
group by county_name,region_name
order by region_name