require 'spec_helper'

describe Contact do

  before { @contact = Contact.new(name: "John Doe", email: "john@doe.com", body: "I want to get in contact", phone: "555-555-5555") }

  subject { @contact }

  it { should respond_to :name }
  it { should respond_to :phone }
  it { should respond_to :email }
  it { should respond_to :body }
  it { should be_valid }

  describe "without an email" do
    before { @contact.email = "" }
    it { should_not be_valid }
  end

  describe "without a body" do
    before { @contact.body = "" }
    it { should_not be_valid }
  end
end