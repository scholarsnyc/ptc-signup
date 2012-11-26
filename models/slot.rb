class Slot
  include DataMapper::Resource

  property :id, Serial
  property :day, String, :required => true
  property :time, String, :required => true
  property :capacity, Integer, :default => 7
  property :grade, String, :required => true
  property :cohort, String
  
  has n, :appointments
  
  def name
    "#{day}, #{time} (Remaining: #{remaining})"
  end
  
  def remaining
    capacity - appointments.count
  end
end
