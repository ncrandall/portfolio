class Project < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :project_type, presence: true, inclusion: { in: %w(startup freelance personal) }

end
