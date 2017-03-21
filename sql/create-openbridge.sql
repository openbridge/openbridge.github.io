/*
You will want to replace {{username}}, {{mydatabase}}, {{userpassword}} with your correct values
*/
create database {{mydatabase}}; create user {{username}} with password '{{userpassword}}'; grant create on database {{mydatabase}} to {{username}}; create schema if not exists openbridge authorization {{username}}; grant all on schema openbridge to {{username}};
