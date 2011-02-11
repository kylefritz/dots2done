class Task < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :name,:description,:days_total, :days_completed

  #def to_json(options={})
  #  super(options.merge(:only =>[:id,:created_at,:name,:description,:days_total,:days_completed]))
  #end
end
