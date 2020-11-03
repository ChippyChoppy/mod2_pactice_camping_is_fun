class CamperActivity < ApplicationRecord
    belongs_to :camper 
    belongs_to :activity 

    validates :signup, numericality: {greater_than_or_equal_to: 0} 
    validates :signup, numericality: {less_than: 24} 
end