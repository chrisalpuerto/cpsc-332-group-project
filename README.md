### CSPC 332 Group Project

# Authors: Chris Alpuerto, Jairo Santos, Adonay Yonnas

SET UP:

1. 

2. run mysql -h PUBLIC_IP -u USERNAME -p inside the terminal with the variables I sent in the Discord -> it will then ask to ender a password, use the password I sent in the discord

If successful, you should see: 

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 133
Server version: 8.4.8-google (Google)

as well as `my sql>` in the terminal. Inside the terminal, you may run SHOW DATABASES; to make sure everything is connected

3. Inside `setup.sql`, there should be:
`
SHOW DATABASES;
USE study_spots_database;
`
Inside the terminal, run `source setup.sql;` to run this SQL file - you will run this command with the respective SQL file to run the SQL commands in that file

You are now all set up! You may use `main.sql` or create other SQL files to start running commands