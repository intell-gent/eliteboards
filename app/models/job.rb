class Job < ApplicationRecord
  belongs_to :board
  belongs_to :jobposting, class_name: 'User'
end
