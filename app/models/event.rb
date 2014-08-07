class Event < ActiveRecord::Base
    has_many :users
    validates :name, presence: true
    validates :date, presence: true
    default_scope -> { order('date DESC') }
end
