# CSPC 332 Group Project

### Authors: Chris Alpuerto, Jairo Santos, Ananya Karthi, Adonay Yonnas

## MySQL SET UP:

1. Set up your local MySQL server on your device
Install MySQL:
`brew install mysql` (mac) or `choco install mysql` (windows)

2. Start MySQL local server:
`brew services start mysql` (mac) or 

3. Set up MySQL Server Credentials (important)
`mysql_secure_installation`
NOTE: use root and desired password (I used Csuf_332 as an easy password)

4. Log Into MySQL:
`mysql -u root -p`
It will ask to enter password, enter password that you created and press enter (nothing will show up while typing password but just input password and enter)

If successful, you should see: `my sql>` in the terminal.

At this point, you are all set and ready to start running SQL commands!

To run SQL files, you will have the .sql file with the commands you want to run inside that file. Once done, you can do `source {filename}.sql` inside terminal to run that SQL file. I have a few of theses set up for you guys:
- _start_ folder has *create.sql* and *check_db.sql* to create the main database. You can try `source start/create.sql` to create the database, and `source start/check_db.sql` to check if the databases were created.

If you have got to this point, you are all set! You may make your own SQL files and test things out!


## Jupyter Notebook SET UP (jupysql)

We mainly plan on using this for history control, as to also show output history as well. To set this up:

0. Regularly install and start MySQL as usual
1. Install python: `brew install python`
2. Install Jupyter Notebook: ``
3. create environment folder and install requirements:
- `python3 -m venv venv`
- `source venv/bin/activate` (use this as your environment)
- `pip install requirements.txt` (install requirements)

Once this is all done, we can start using the Jupyter Notebook to run SQL commmands.
IMPORTANT NOTES:
- use % sql {SQL commands} to run the SQL commands
- use ! {terminal command} to run any needed terminal commands

I have the notebook set up, you may add / delete as needed