class Membership < ApplicationRecord
    validates :client_id, uniqueness: true
    validates :age, numericality: { in: 8..18 }
    belongs_to :gym
    belongs_to :client
end
