class Pledge < ApplicationRecord
    belongs_to :user
    belongs_to :project 

    validates(:amount, {presence: true, numericality: true})
end
