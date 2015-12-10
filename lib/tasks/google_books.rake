namespace :google_books do

  desc "Fetch data from Google Books"
  task googlebooks: :environment do
    lang = ["‘php’", "‘ruby’"]
    lang.each do |item|
      books = GoogleBooks::API.search(item, count: 40, filter: 'ebooks')
      books.each do |b|
        title           = b.title
        authors         = b.authors.join(', ')
        publisher       = b.publisher
        year            = b.published_date
        isbn            = b.isbn
        page_count      = b.page_count
        description     = b.description
        average_rating  = b.average_rating
        ratings_count   = b.ratings_count
        covers          = b.covers[:large]
        preview_link    = b.preview_link
        info_link       = b.info_link
        kind            = "Google Book"
        Book.create(title: title, authors: authors, publisher: publisher,
                    year: year, isbn: isbn, page_count: page_count,
                    description: description, average_rating:average_rating,
                    ratings_count: ratings_count, covers: covers,
                    preview_link: preview_link, info_link: info_link, kind: kind)
      end
    end
  end
end
