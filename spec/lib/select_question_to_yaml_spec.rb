require 'rails_helper'
require_relative '../../lib/section_questions_to_yaml'

describe SectionQuestionsToYaml do
  before(:each) do
    destination_path = "#{Rails.root}/books/learn_javascript_logically/100_strings_numbers_booleans/200_introduction_to_numbers_questions.yml"
    seeds_section_name = "map-function"
    @sqy = SectionQuestionsToYaml.new(seeds_section_name,destination_path)
  end
  
  describe "initialize" do
    it "should initialize" do 
      expect(@sqy).to be_a_instance_of(SectionQuestionsToYaml)
    end
  end
  
  describe "ar_objects" do
    it "should return ar_objects" do 
      expect(@sqy.ar_objects).not_to be_nil
    end
  end
  describe "hashes" do
    it "should return hashes" do 
      expect(@sqy.hashes).not_to be_nil
    end
  end
  describe "write_to_file" do
    it "should write file" do 
      expect(@sqy.write_to_file).to be_a_kind_of(Fixnum)
    end
  end
  
end