class Message < ActiveRecord::Base
  
  attr_accessible :date, :time, :text, :phone, :user_id
    
  validates_presence_of :date, :time, :text, :phone 
  validates_length_of :text, :within => 1..140, :too_long => " must be shorter than 140 chars",
                                                   :too_short => " must be at least 1 chars"                        
  validates_length_of :phone, :is => 10   
end