import tkinter as tk
import mysql.connector

config = {
    'user': 'root',
    'password': "root",
    'host': '127.0.0.1',
    'database': 'recordstore'
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

class CDDBQueryApp:
    def __init__(self, root):
        # Setting the title and window size
        root.title("CD Database Query")
        root.geometry("700x900")  # Adjusted the height to accommodate the navigation buttons
        
        # Setting the background color
        root.configure(bg="lightgray")
        
        # Create the frames for different pages
        self.search_frame = tk.Frame(root, bg="lightgray")
        self.add_frame = tk.Frame(root, bg="lightgray")
        
        # Pack the search frame first as it's the default page
        self.search_frame.pack(fill="both", expand=True)
        
        # Initialize the search and add pages
        self.init_search_page()
        self.init_add_page()
        
    def init_search_page(self):
        self.title = tk.Label(self.search_frame, text="Query our CD Database for any CD you're looking for!", background="lightgray", font=("Arial", 16))
        self.title.pack(pady=20)
        
        self.search_entries = {}
        self.init_input_fields(self.search_frame, "Click to Search", self.search_db, self.search_entries)
        
        # Button to navigate to the Add page
        tk.Button(self.search_frame, text="Add a Song", command=self.show_add_page, bg="lightgray").pack(pady=10)
        
    def init_add_page(self):
        self.add_title = tk.Label(self.add_frame, text="Add a song to the Database", background="lightgray", font=("Arial", 16))
        self.add_title.pack(pady=20)
        
        self.add_entries = {}
        self.init_input_fields(self.add_frame, "Add to Database", self.add_to_db, self.add_entries)
        
        # Button to navigate back to the Search page
        tk.Button(self.add_frame, text="Back to Search", command=self.show_search_page, bg="lightgray").pack(pady=10)
        
    def init_input_fields(self, parent, button_text, button_command, entries_dict):
        subtitle = tk.Label(parent, text="If adding a song, fill out all fields. If searching for a song, just fill out the song name.", background="lightgray", font=("Arial", 12))
        subtitle.pack(pady=10)
        
        self.entries = {}
        labels_text = ["Song Name", "Artist Name", "Album Name", "Release Date", "Rating", "Genre"]  # Adjusted for all necessary fields
        for label in labels_text:
            frame = tk.Frame(parent, background="lightgray")
            frame.pack(pady=10, fill="x", expand=True)
            
            tk.Label(frame, text=label, background="lightgray").grid(row=0, column=0, padx=10)
            entry = tk.Entry(frame, foreground="black", bg="white")
            entry.grid(row=0, column=1, padx=10)
            entry.insert(0, "")
            entries_dict[label] = entry

        # Button at the bottom of the input fields
        tk.Button(parent, text=button_text, command=button_command, bg="lightgray").pack(pady=20)
        
    def search_db(self):
        # Get the search term for song name
        song_name = self.search_entries["Song Name"].get()

        # Get the search term for album name
        album_name = self.search_entries["Album Name"].get()

        print(f"Song Name: '{song_name}', Album Name: '{album_name}'")

        # Construct the query
        query_parts = []
        params = []

        if song_name:  # only if there is a song_name given
            query_parts.append("song_name LIKE %s")
            params.append('%' + song_name + '%')
            
        if album_name:  # only if there is an album_name given
            query_parts.append("album_name LIKE %s")
            params.append('%' + album_name + '%')

        if not query_parts:  # if neither song_name nor album_name are given
            print("No search criteria provided!")
            return

        query = "SELECT * FROM song WHERE " + " OR ".join(query_parts)

        # Execute the query with the parameters
        cursor.execute(query, tuple(params))

        # Fetch and print results
        result = cursor.fetchall()
        for row in result:
            print(row)
        
    def add_to_db(self):
        song_name = self.add_entries["Song Name"].get()
        artist_name = self.add_entries["Artist Name"].get()
        album_name = self.add_entries["Album Name"].get()
        release_date = self.add_entries["Release Date"].get()
        rating = self.add_entries["Rating"].get()
        genre = self.add_entries["Genre"].get()

        print(f"Song Name: '{song_name}', Album Name: '{album_name}'")

        
        querySong = """
        INSERT INTO song (song_name, artist_name, album_name, release_date, rating)
        VALUES (%s, %s, %s, %s, %s)
        """

        queryAlbum = """
        INSERT INTO album (artist, album_name, release_date, genre)
        VALUES (%s, %s, %s, %s)
        """
        cursor.execute(querySong, (song_name, artist_name, album_name, release_date, rating))
        cursor.execute(queryAlbum, (artist_name, album_name, release_date, genre))
        connection.commit()
        
    def show_add_page(self):
        for entry in self.search_entries.values():
            entry.delete(0, tk.END)

        self.search_frame.pack_forget()
        self.add_frame.pack(fill="both", expand=True)
        
    def show_search_page(self):
        for entry in self.add_entries.values():
            entry.delete(0, tk.END)
            
        self.add_frame.pack_forget()
        self.search_frame.pack(fill="both", expand=True)

if __name__ == "__main__":
    root = tk.Tk()
    app = CDDBQueryApp(root)
    root.mainloop()
