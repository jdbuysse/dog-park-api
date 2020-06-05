class Owner < ApplicationRecord
    has_many :dog_owners
    has_many :dogs, through: :dog_owners
end
