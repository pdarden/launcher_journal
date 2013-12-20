class Entry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  validates_numericality_of :category_id, :only_integer => true
end
