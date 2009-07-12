require 'pathname'
require Pathname(__FILE__).dirname.expand_path.parent + 'spec_helper'

if HAS_SQLITE3 || HAS_MYSQL || HAS_POSTGRES
  describe 'DataMapper::Is::<%= class_name %>' do
    
    before(:each) do 
      # bootstrap
    end
    
    it "should have some sort of tests at least" do
      true.should == false
    end
    
    describe "Class Methods" do 
      
    end #/ Class Methods
    
    describe "Instance Methods" do 
      
    end #/ Instance Methods
    
  end #/ DataMapper::Is::<%= class_name %>
  
end #/ if
