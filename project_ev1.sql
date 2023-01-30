use ev_sales_data;

select * from project_ev;

alter table project_ev add Sr_no integer first ;

alter table project_ev modify Sr_no integer primary key auto_increment; 

update project_ev set sale_price = 80215 where Model = 'A7';

#for dropping column 
#alter table project_ev drop column Sr_no;
#drop database project_ev;

# for finding most popular company

select make,model,count(model) as 'No. of sales' from project_ev group by model order by count(model) desc;

# for filtering and ordering sales data according to years

select transaction_year, count(transaction_year) from project_ev group by transaction_year order by transaction_year asc;

#For fnding most popular company

select make, count(make) from project_ev group by make order by count(make) desc;

#For finding most popular cars and their brands

select make,model,count(model) as 'No. of sales' from project_ev group by model order by count(model) desc;

#For finding which models passes or meets 2019 regulations for subsidies

#For finding companies which gives most of the cars which meets required conditions for subsidies

select model,count(model) from project_ev where meets_2019_hb_2042_electric_range_requirement= 'TRUE'
group by model order by count(model) desc;

#For finding types of vehicles accoridng to primary use

select vehicle_primary_use, count(vehicle_primary_use) from project_ev group by vehicle_primary_use;

#For finding types of the evs accordng to  fuels they use

select clean_alternative_fuel_vehicle_type,count(clean_alternative_fuel_vehicle_type) from project_ev
 group by clean_alternative_fuel_vehicle_type order by count(clean_alternative_fuel_vehicle_type);
 
 # For filtering and ordering data according to models and range
 
 select model, electric_range from project_ev group by model order by electric_range desc;
 
 #For updating databse because of the errors in the database
 
 update project_ev set electric_range=212 where model = 'leaf' and transaction_year=2021; 
 
  #For updating databse because of the errors in the database
  
 update project_ev set model = 'leaf' where model = 'Leaf';
 
#For updating databse because of the errors in the database
  
 update project_ev set electric_range=260 where model = 'XC40' and transaction_year=2022;
 
 #For updating databse because of the errors in the database
 
select distinct model, transaction_year from project_ev where electric_range=0 order by transaction_year;

#For updating databse because of the errors in the database

select distinct model, transaction_year from project_ev where sale_price=0 order by transaction_year;

#For updating databse because of the errors in the database
 
select model from project_ev where count(model)<500;

#For finding ev with longest range

select make , model, max(electric_range) as mx_range from project_ev;

#For finding which used cars people purchase most
 
select make, count(model) from project_ev where new_or_used_vehicle= 'Used' group by make order by count(model) desc;

#For finding no. of used cars
select count(model) from project_ev where new_or_used_vehicle ='Used';

#For finding no. of new cars
select count(model) from project_ev where new_or_used_vehicle ='New';

select model, max(electric_range) from project_ev where clean_alternative_fuel_vehicle_type = 'Battery Electric Vehicle (BEV)' ;
select * from project_ev;