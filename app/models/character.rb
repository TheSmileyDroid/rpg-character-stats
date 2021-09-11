class Character < ApplicationRecord
    validates :name, presence: true
    validates :desc, presence: true
    validates :points, presence: true
    validates :hp, presence: true
    validates :fp, presence: true
end
