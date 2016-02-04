class Fish < ActiveRecord::Base

  validates :name, presence: true
  

  belongs_to :supplier
  has_many :images
 
  has_many :categorized_fish
  has_many :categories, through: :categorized_fish
  
  has_many :carted_fishes
  has_many :orders, through: :carted_fishes

  #images is a one to many relationship
  def sale_message
    if price.to_i < 2
      "Discount Item"
    else
      "On Sale!"
    end
  end

  def tax
    price.to_i * 0.09
  end

  def total 
    price.to_i + tax
  end

  def get_first_image
    if images.first 
      images.first.url 
    else
      Image.first.url
    end
  end


end
