class Event < ActiveRecord::Base
    has_many :event_users, foreign_key:"attender_id", dependent: :destroy
    has_many :attend_users, through: :event_users, source: :attender
    validates :name, presence: true
    validates :date, presence: true
    default_scope -> { order('date DESC') }
end
