require File.dirname(__FILE__) + '/spec_helper'

describe "DMGen::Is" do
  before do
    @generator = DMGen::Is.new('/tmp', {}, 'awesome')
  end

  # basic file creation.
  it "creates a Rakefile" do
    @generator.should create('/tmp/dm-is-awesome/Rakefile')
  end
  it "creates the lib folder layout" do
    @generator.should create('/tmp/dm-is-awesome/lib/dm-is-awesome.rb')
    @generator.should create('/tmp/dm-is-awesome/lib/dm-is-awesome/is/version.rb')
    @generator.should create('/tmp/dm-is-awesome/lib/dm-is-awesome/is/awesome.rb')
  end
  it "creates the spec folder layout" do
    @generator.should create('/tmp/dm-is-awesome/spec/integration/awesome_spec.rb')
    @generator.should create('/tmp/dm-is-awesome/spec/spec.opts')
    @generator.should create('/tmp/dm-is-awesome/spec/spec_helper.rb')
  end
  it "creates a README" do
    @generator.should create('/tmp/dm-is-awesome/README.rdcoc')
  end
  it "creates a History file" do
    @generator.should create('/tmp/dm-is-awesome/History.txt')
  end
  it "creates a LICENSE" do
    @generator.should create('/tmp/dm-is-awesome/LICENSE')
  end
  # it "creates a Manifest for Hoe" do
  #   @generator.should create('/tmp/dm-is-awesome/Manifest.rdoc')
  # end
  it "creates a TODO list" do
    @generator.should create('/tmp/dm-is-awesome/TODO')
  end
  it "creates support tasks" do
    @generator.should create('/tmp/dm-is-awesome/tasks/spec.rb')
    @generator.should create('/tmp/dm-is-awesome/tasks/install.rb')
  end

  # describe "Manifest.txt" do
  #   before do
  #     @template = @generator.template(:manifest_txt)
  #     @result = @template.render
  #   end
  # 
  #   it "contains itself" do
  #     @result.should.be.a.match(/^Manifest.txt$/)
  #   end
  # 
  #   it "is the sorted list of its contents" do
  #     @result.split("\n").sort.should == @result.split("\n")
  #   end
  # end
end
