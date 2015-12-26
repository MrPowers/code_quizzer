require 'rails_helper'

describe ApplicationHelper do
  
  describe "#markdownify" do
     it "should return data" do
       response = helper.markdownify("Knock knock")
       expect(response).to eq("<p>Knock knock</p>\n")
     end
  end
  
  describe "#alert_css_class" do
     it "should return data" do
       response = helper.alert_css_class("success")
       expect(response).to eq("alert-success")
     end
  end
  
end