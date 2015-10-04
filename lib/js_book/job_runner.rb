require 'tsort'

module JsBook; class JobRunner

  include TSort

  def initialize()
    @jobs = Hash.new{|h,k| h[k] = []}
  end

  def add(name, dependencies=[])
    @jobs[name] = dependencies
  end

  def tsort_each_node(&block)
    @jobs.each_key(&block)
  end

  def tsort_each_child(node, &block)
    @jobs[node].each(&block) if @jobs.has_key?(node)
  end

end; end
