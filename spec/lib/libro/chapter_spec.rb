require 'rails_helper'
require 'libro/chapter'

module Libro
  describe Chapter do
    before(:each) do
      path = Pathname.new("#{Rails.root}/books/learn_javascript_logically/1300_better_iterators")
      @chapter = Libro::Chapter.new(path)
    end
    
    describe "#initialize" do
      it "should be an instance of chapter" do
        expect(@chapter).to be_a_instance_of(Chapter)
      end
    end
    
    describe "#chapter Sections" do
      it "should return chhapter sections" do
        expect(@chapter.chapter_sections).not_to be_nil
        expect(@chapter.humanized_name).to eq("Better Iterators")
      end
    end
    
    
  end
end