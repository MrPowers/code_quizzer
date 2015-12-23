require 'rails_helper'
require 'libro/book'

module Libro
  describe Book do
    describe "#initialize" do
      it 'builds a correct URL' do
        book = Libro::Book.new(Pathname.new("#{Rails.root}/books/learn_javascript_logically"))
        expect(book).to be_a_instance_of(Book)
      end
    end
    
    describe "#other methods" do
      book = Libro::Book.new(Pathname.new("#{Rails.root}/books/learn_javascript_logically"))
      it 'return chapters' do
        expect(book.chapters).should_not be_a_nil
      end
  
      it 'return sections' do
        expect(book.sections).should_not be_a_nil
      end
      
      it 'find sections' do
        expect(book.find_section(0x007fbd240b4800)).to eq nil
      end
    end
  end
end