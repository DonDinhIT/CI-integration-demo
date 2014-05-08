class Student < ActiveRecord::Base
  belongs_to :schools
  validates_presence_of :name, :school_id
end
