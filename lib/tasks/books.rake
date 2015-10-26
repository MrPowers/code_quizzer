namespace :books do

  desc "Delete all books, book_chapters, and chapter_sections"
  task :delete_all => :environment do
    Book.delete_all
    BookChapter.delete_all
    ChapterSection.delete_all
  end

  desc "Build all books, book_chapters, and chapter_sections"
  task :build_all => :environment do
    ChapterSection.create_all
  end

end

