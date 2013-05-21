class Focus < ActiveRecord::Base
  attr_accessible :content, :note,:focus_at
  belongs_to :user
  validates :content, :length => { :maximum => 50 }, presence: true
end
