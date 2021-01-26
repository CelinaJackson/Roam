class User < ActiveRecord::Base 
    has_many :locations 
    has_many :comments 
    validates :first_name, :last_name, presence: true 
    validates :email, presence: true, uniqueness: true 
end 