class Address < ActiveRecord::Base
  belongs_to	:entry
  
  attr_accessible :city, :state, :street, :zip
  validates_presence_of	 :city, :state, :street, :zip
#  validates_length_of state, :minimum => 2, :maximum => 2
end
