class EventUser < ActiveRecord::Base
  belongs_to :owner,    class_name: "Event"
  belongs_to :attender, class_name: "Event"
  validates  :owner_id,    presence: true
  validates  :attender_id, presemce: true
  validates  :event_id,    presence: true
  #TODO: add attend_events
end
