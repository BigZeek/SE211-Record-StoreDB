# SE211-Record-StoreDB
SE211 Database project.

What is the purpose of this project?
1. Supply a database for use by owners of record/music stores. Has tables for employees, managers, songs, albums.
2. Supply a GUI for interaction with the Database/

How do I load the MySQL Script?
1. Either download or copy all text in the sql file
2. Open MySQL Workbench. Make sure you have an active instance running (you'll need to type in your password for this)
3. If you downloaded the script, click "file" in the top left corner of MySQL workbench. Navigate to the sql file and open it.
4. If you copied the script, click "file" and then "new query tab". Paste the script into the new tab.
5. Click the lightning bolt icon to run the query. Check messages in the bottom of Workbench to make sure everything was implemented correctly.
6. The database should now be correctly created.

How do I load the Python GUI?
1. Download the Python file
2. Open the Python file in your editor of choice
3. Run "pip install tkinter"
4. Run "pip install mysql-connector-python"
5. Run the file, usually with F5 (or the Play button in the top right of VSCode)
6. The GUI should be opened

How do I interact with the Database using the GUI?
1. Make sure an instance of MySQL server is running. This is similar to step 2 in "How do I load the MySQL Script?"
2. Open the GUI.
3. The first page allows for searching of songs, and currently displays results in the console. Users can search
either by song name, or by album name to view all songs in an album.
4. The second page allows for adding a song to the database. Users must fill out every input field, and upon submission,
will simultaneously fill the album and song tables with all given information.
