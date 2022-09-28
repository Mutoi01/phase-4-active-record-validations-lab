class Post < ApplicationRecord
  validate :click_bait
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }


  def click_bait
    :title.include? ["Won't Believe","Secret","Top [number]","Guess"]
  end
end
