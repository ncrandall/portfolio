require 'spec_helper'

describe Post do
  before { @post = Post.new(title: "New Post", body: "This is my blog post", author: "Nick") }

  subject { @post }

  it { should respond_to :title }
  it { should respond_to :body }
  it { should respond_to :author }
  it { should respond_to :slug }
  it { should be_valid }

  describe 'without a title' do
    before { @post.title = '' }
    it { should_not be_valid }
  end

  describe 'without a body' do
    before { @post.body = '' }
    it { should_not be_valid }
  end

  describe 'without an author' do
    before { @post.author = '' }
    it { should_not be_valid }
  end
end