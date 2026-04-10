### CSPC 332 Group Project

# Authors: Chris Alpuerto, Jairo Santos, Adonay Yonnas

SET UP:

1. Set up your local MySQL server on your device
Install MySQL:
`brew install mysql` (mac)

Start MySQL local server:
`brew services start mysql` (mac) or 
Set up MySQL Server Credentials (important)
`mysql_secure_installation`
NOTE: use root and desired password (I used Csuf_332 as an easy password)
Log Into MySQL:
`mysql -u root -p`
It will ask to enter password, enter password that you created and press enter (nothing will show up while typing password but just input password and enter)

If successful, you should see: `my sql>` in the terminal.

At this point, you are all set and ready to start running SQL commands!

To run SQL files, you will have the .sql file with the commands you want to run inside that file. Once done, you can do `source {filename}.sql` inside terminal to run that SQL file. I have a few of theses set up for you guys:
- _start_ folder has *create.sql* and *check_db.sql* to create the main database. You can try `source start/create.sql` to create the database, and `source start/check_db.sql` to check if the databases were created.

If you have got to this point, you are all set! You may make your own SQL files and test things out!

2. 
