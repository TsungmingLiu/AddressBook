class Address < ActiveRecord::Base
  belongs_to	:entry
  belongs_to	:address_type
  attr_accessible :city, :state, :street, :zip, :address_type_id
  
  validates_presence_of	 :city, :state, :street, :zip
  validates_length_of :zip, is: 5
  validates_length_of :state, is: 2
  
end
