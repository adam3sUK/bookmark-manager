require 'bookmark'

describe Bookmark do
  describe '.all' do
    it "calls a 'class method'" do
      expect(Bookmark).to respond_to (:all)
    end
    #it { is_expected.to respond_to(:all) }
    it 'returns an array of bookmarks' do
      populate_table
      bookmarks = Bookmark.all
      expect(bookmarks).to include 'http://www.makersacademy.com'
      expect(bookmarks).to include 'http://www.destroyallsoftware.com'
      expect(bookmarks).to include 'http://www.google.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.google.co.uk')
      expect(Bookmark.all).to include 'http://www.google.co.uk'
    end
  end
end