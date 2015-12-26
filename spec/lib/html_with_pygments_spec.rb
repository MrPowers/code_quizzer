require 'rails_helper'
require_relative '../../lib/html_with_pygments'

describe HTMLwithPygments do
  describe "block code" do
    it{expect(HTMLwithPygments.new.block_code("<p>aaa</p>","ruby")).to eq("<div class=\"highlight\"><pre><span class=\"o\">&lt;</span><span class=\"nb\">p</span><span class=\"o\">&gt;</span><span class=\"n\">aaa</span><span class=\"o\">&lt;</span><span class=\"sr\">/p&gt;</span>\n</pre></div>")}
  end  
end