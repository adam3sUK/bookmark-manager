def reset_table
  conn = PG.connect( dbname: 'bookmark_manager_test' )
  conn.exec( "TRUNCATE TABLE bookmarks")
end

def populate_table
  conn = PG.connect(dbname: 'bookmark_manager_test')
  Bookmark.create(url: 'http://www.makersacademy.com')
  Bookmark.create(url: 'http://www.destroyallsoftware.com')
  Bookmark.create(url: 'http://www.google.com')
end