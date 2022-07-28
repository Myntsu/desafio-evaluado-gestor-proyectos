class User < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :date_start, presence: true
    validates :date_finish, presence: true
    validates :state, presence: true
    scope :find_valid, -> { where(state: true) }
end
