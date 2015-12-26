require 'rails_helper'
require 'libro/chapter_section'

module Libro
  describe ChapterSection do
    before(:each) do
      path = Pathname.new("#{Rails.root}/books/learn_javascript_logically/1100_common_data_structures/300_arrays_of_objects.md")
      @chapter_section=ChapterSection.new(path)
    end
    
    describe "#initialize" do
      it "should be an instance of chapter" do
        expect(@chapter_section).to be_a_instance_of(ChapterSection)
      end
    end
    
    describe "#to_param" do
      it "should be an instance of chapter" do
        expect(@chapter_section.to_param).to eq("arrays-of-objects")
      end
    end
    
    describe "#markdown" do
      it "should be an instance of chapter" do
        expect(@chapter_section.markdown).not_to be_nil
      end
    end
    
    describe "#questions" do
      it "should be an instance of chapter" do
        expect(@chapter_section.questions).not_to be_nil
      end
    end
  end
end