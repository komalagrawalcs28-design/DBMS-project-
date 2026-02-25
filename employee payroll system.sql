CREATE DATABASE PAYROLL;
USE PAYROLL;
//create department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    manager_name VARCHAR(50),
    contact_no VARCHAR(15)
);
//create table employee 
CREATE table employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    dob DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
//create User (Admin) Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    role VARCHAR(20),
    contact_no VARCHAR(15)
);
//CREATE TABLE Attendance
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    working_days INT,
    present_days INT,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
//CREATE TABLE Payroll
CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
