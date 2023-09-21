use classicmodels;
-- Tao SP dau tien
delimiter //
create procedure findAllCustomers()
begin
select * from customers;
end; 
//
delimiter ;
-- Goi den SP
call findAllCustomers();

-- Sua procedure -> xoa procedure va tao lai
delimiter //
drop procedure if exists findAllCustomers;
create procedure findAllCustomers()
begin
select * from customers where customerNumber = 175;
end //
