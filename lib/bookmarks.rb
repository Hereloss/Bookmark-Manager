require 'pg'

class Bookmark_manager

  def all
      connection = PG.connect(dbname: 'Bookmark manager')
      result = connection.exec('SELECT * FROM bookmarks')
      result.map { |bookmark| bookmark['url'] }
  end

end