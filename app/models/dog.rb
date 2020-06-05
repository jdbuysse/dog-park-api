class Dog < ApplicationRecord
    has_many :dog_owners
    has_many :owners, through: :dog_owners
end
