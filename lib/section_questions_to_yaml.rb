class SectionQuestionsToYaml

  attr_reader :seeds_section_name, :destination_path

  def initialize(seeds_section_name, destination_path = "#{Rails.root}/tmp/whatever.yml")
    @seeds_section_name = seeds_section_name
    @destination_path = destination_path
  end

  def ar_objects
    SectionQuestion.where(section_name: seeds_section_name)
  end

  def hashes
    ar_objects.map do |o|
      o.attributes.except("id", "order", "created_at", "updated_at", "section_name")
    end
  end

  def write_to_file
    File.open(destination_path, "w+"){ |o| o.write(hashes.to_yaml) }
  end

end
