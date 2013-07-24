class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :author, presence: true

  def snippet
    body.split(/\s/)[0..30].join(" ")
  end
end
