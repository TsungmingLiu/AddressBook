class Entry < ActiveRecord::Base
  has_many	:addresses

  attr_accessible :email, :first_name, :last_name
  validates_presence_of :first_name,	:last_name,	:email
# validates :first_name,	:maximum => 30, :message => "Please enter a valid first name."
# validates :last_name,  	:maximum => 30, :message => "Please enter a valid last name."
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  
end
