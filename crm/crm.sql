-- Drops existing tables, so we start fresh with each
-- run of this script

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS salesperson_staff;
DROP TABLE IF EXISTS industry;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industry_membership;

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  title TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE company (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT
);

CREATE TABLE salesperson_staff (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

CREATE TABLE industry (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  notes TEXT,
  created_at TEXT,
  salesperson_staff_id INTEGER,
  contacts_id INTEGER
);

CREATE TABLE industry_membership (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER
);