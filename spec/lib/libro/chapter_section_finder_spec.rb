require 'rails_helper'
require 'libro/chapter_section_finder'

module Libro
  describe ChapterSectionFinder do
    
    before(:each) do
      book = Libro::Book.new(Pathname.new("#{Rails.root}/books/learn_javascript_logically"))
      @section = book.find_section("importance-of-precise-language")
      @chapter_section_finder = Libro::ChapterSectionFinder.new(book.sections, @section)
    end

    context "chapter sections finder" do
      it 'initialize' do
        expect(@chapter_section_finder).to be_a_instance_of(ChapterSectionFinder)
      end

      it 'shoulds return current index' do
        expect(@chapter_section_finder.current_index).not_to be_nil
      end

      it 'should return previous' do
        expect(@chapter_section_finder.previous).not_to be_nil
      end
      
      it 'should return previous to be nil' do
        book = Libro::Book.new(Pathname.new("#{Rails.root}/books/learn_javascript_logically"))
        section = book.find_section("introduction-to-strings")
        chapter_section_finder = Libro::ChapterSectionFinder.new(book.sections, section)
        expect(chapter_section_finder.previous).to be_nil
      end

      it 'should return next' do
        expect(@chapter_section_finder.next).not_to be_nil
      end
    end
  end
end