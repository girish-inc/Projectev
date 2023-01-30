use ev_sales_data;
select * from project_ev;
alter table project_ev add Sr_no integer first ;
alter table project_ev modify Sr_no integer primary key auto_increment; 
update project_ev set sale_price = 80215 where Model = 'A7';
#for dropping column 
#alter table project_ev drop column Sr_no;
#drop database project_ev;
select make,model,count(model) as 'No. of sales' from project_ev group by model order by count(model) desc;
select transaction_year, count(transaction_year) from project_ev group by transaction_year order by transaction_year asc;
select make, count(make) from project_ev group by make order by count(make);
select model from project_ev where meets_2019_hb_2042_electric_range_requirement= 'TRUE' group by model;
select vehicle_primary_use, count(vehicle_primary_use) from project_ev group by vehicle_primary_use;
select clean_alternative_fuel_vehicle_type,count(clean_alternative_fuel_vehicle_type) from project_ev
 group by clean_alternative_fuel_vehicle_type order by count(clean_alternative_fuel_vehicle_type);
 select model, electric_range from project_ev group by model order by electric_range desc;
 update project_ev set electric_range=212 where model = 'leaf' and transaction_year=2021; 
 update project_ev set model = 'leaf' where model = 'Leaf';
 update project_ev set electric_range=260 where model = 'XC40' and transaction_year=2022;
select distinct model, transaction_year from project_ev where electric_range=0 order by transaction_year;
select distinct model, transaction_year from project_ev where sale_price=0 order by transaction_year;
select model from project_ev where count(model)<500;
select make,model,count(model) as 'No. of sales' from project_ev group by model order by count(model) desc;
