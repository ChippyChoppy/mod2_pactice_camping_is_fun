class CamperActivity < ApplicationRecord
    belongs_to :camper 
    belongs_to :activity 

    validates :camper_id, :activity_id, :signup, presence: true
    validates :signup, numericality: {greater_than_or_equal_to: 0} 
    validates :signup, numericality: {less_than_or_equal_to: 23} 
end