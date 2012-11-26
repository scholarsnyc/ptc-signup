class Appointment
  include DataMapper::Resource

  property :id, Serial
  property :student, String
  property :homeroom, String
  property :grade, Integer
  property :parent, String
  property :email, String
  
  belongs_to :slot
end
