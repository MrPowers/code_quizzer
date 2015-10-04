module JsBook; class Sections

  def self.ordered
    runner = JsBook::JobRunner.new
    runner.add('order-of-operations', ['variable-reassignment'])
    runner.add('variable-reassignment', ['declaring-variables'])
    runner.add('declaring-variables', ['introduction-to-strings', 'introduction-to-numbers', 'introduction-to-booleans'])
    runner.tsort
  end

  attr_reader :section

  def initialize(section)
    @section = section
  end

  def all
    Sections.ordered
  end

  def index
    all.index(section)
  end

  def next
    i = index + 1
    return nil if i >= all.length
    all[i]
  end

  def previous
    i = index - 1
    return nil if i <= -1
    all[i]
  end

end; end

