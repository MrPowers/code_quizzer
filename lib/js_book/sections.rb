module JsBook; class Sections

  def self.ordered
    # missing: order-of-operations
    edges = [
      DirectedGraph::Edge.new('introduction-to-booleans', 'declaring-variables'),
      DirectedGraph::Edge.new('introduction-to-strings', 'declaring-variables'),
      DirectedGraph::Edge.new('introduction-to-numbers', 'declaring-variables'),
      DirectedGraph::Edge.new('declaring-variables', 'variable-reassignment'),
      DirectedGraph::Edge.new('variable-reassignment', 'variables-and-values'),
      DirectedGraph::Edge.new('variables-and-values', 'variable-practice'),
      DirectedGraph::Edge.new('variable-practice', 'more-variable-reassignment'),
      DirectedGraph::Edge.new('more-variable-reassignment', 'introduction-to-types'),
      DirectedGraph::Edge.new('more-variable-reassignment', 'importance-of-precise-language'),
      DirectedGraph::Edge.new('more-variable-reassignment', 'importance-of-precise-language'),
      DirectedGraph::Edge.new('importance-of-precise-language', 'if-statements'),
      DirectedGraph::Edge.new('introduction-to-types', 'if-statements'),
      DirectedGraph::Edge.new('if-statements', 'if-else-statements'),
      DirectedGraph::Edge.new('if-else-statements', 'introduction-to-arrays'),
      DirectedGraph::Edge.new('introduction-to-arrays', "while-loops"),
      DirectedGraph::Edge.new("while-loops", 'infinite-loops'),
      DirectedGraph::Edge.new('while-loops', 'while-loops-with-arrays'),
      DirectedGraph::Edge.new('infinite-loops', 'more-arrays'),
      DirectedGraph::Edge.new('while-loops-with-arrays', 'more-arrays'),
      DirectedGraph::Edge.new('more-arrays', 'introduction-to-functions'),
      DirectedGraph::Edge.new('introduction-to-functions', 'variable-scope'),
      DirectedGraph::Edge.new('variable-scope', 'undefined'),
      DirectedGraph::Edge.new('undefined', 'anonymous-functions'),
      DirectedGraph::Edge.new('anonymous-functions', 'introduction-to-objects'),
      DirectedGraph::Edge.new('introduction-to-objects', 'math-object'),
      DirectedGraph::Edge.new('math-object', 'for-loops'),
      DirectedGraph::Edge.new('for-loops', 'nested-arrays'),
      DirectedGraph::Edge.new('nested-arrays', 'nested-objects'),
      DirectedGraph::Edge.new('nested-objects', 'arrays-of-objects'),
      DirectedGraph::Edge.new('arrays-of-objects', 'type-conversion'),
      DirectedGraph::Edge.new('type-conversion', 'infinity-nan'),
      DirectedGraph::Edge.new('infinity-nan', 'truthy-falsy'),
      DirectedGraph::Edge.new('truthy-falsy', 'and-or-operators'),
      DirectedGraph::Edge.new('and-or-operators', 'functions-with-array-arguments')
    ]
    graph = DirectedGraph::Graph.new(edges)
    graph.sorted_vertices
  end

  attr_reader :section

  def initialize(section)
    @section = section
  end

  def questions
    SectionQuestion.where(section_name: section)
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

