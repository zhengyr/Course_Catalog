class Subject < ActiveRecord::Base
  #validation for subject
  validates :name, presence: true
end
