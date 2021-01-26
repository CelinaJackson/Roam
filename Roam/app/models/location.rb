class Location < ActiveRecord::Base 
    has_many :comments 
    has_many :users, through: :comments 
    belongs_to :users
    validates :address, presence: true 
    validates :type, inclusion: { in: %w(beach forest mountain valley city),
    message: "%{value} is not a valid type of trip. Choose between beach, forest, mountain, valley or city." }
    validates :content, presence: true 
end 