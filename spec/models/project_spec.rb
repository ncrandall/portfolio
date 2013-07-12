require 'spec_helper'

describe Project do
  
  before { @project = Project.new(title: "project 1", description: "It was a fun project", start_date: Date.new(2013,01,31), project_type: "startup" )}

  subject { @project }

  it { should respond_to :title }
  it { should respond_to :description }
  it { should respond_to :start_date }
  it { should respond_to :project_type }
  it { should be_valid }

  describe "without a title" do
    before { @project.title = "" }
    it { should_not be_valid }
  end

  describe "without a description" do
    before { @project.title = "" }
    it { should_not be_valid }
  end

  describe "without a project type" do
    before { @project.project_type = "" }
    it { should_not be_valid }
  end

  describe "without an invalid project type" do
    before { @project.project_type = "not_a_valid_type" }
    it { should_not be_valid}
  end

end