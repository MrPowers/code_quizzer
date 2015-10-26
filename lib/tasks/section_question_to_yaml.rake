desc "convert section questiont to yaml files"
task :section_questions_to_yaml => :environment do
  chapter_name = "100_strings_numbers_booleans"
  section_name = "200_introduction_to_numbers"
  destination_path = "#{Rails.root}/books/learn_javascript_logically/#{chapter_name}/#{section_name}_questions.yml"
  seeds_section_name = "map-function"
  s = SectionQuestionsToYaml.new(seeds_section_name, destination_path)
  s.write_to_file
end

