class Entry < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  validates_numericality_of :category_id, :only_integer => true, :allow_blank => true
  belongs_to :category, inverse_of: :entires

  def category_name
    if category_id != nil
      Category.find(category_id).name
    else
      'none'
    end
  end
end
