class Vehicle < ApplicationRecord
    validates :name, presence: true
    validates :consumption, presence: true
end
