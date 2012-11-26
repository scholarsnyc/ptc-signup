Ptc.controllers :appointments do
  
  get :index do
    @slots = Slot.all(:order => [:grade.asc])
    render 'appointments/list'
  end
  
  get :signup, :with => :id do
    @slot = Slot.get(params[:id])
    render 'appointments/signup'
  end
  
  post :signup do
    @appointment = Appointment.create(
      student: params[:appointment][:student], 
      parent: params[:appointment][:parent],
      email: params[:appointment][:email],
      grade: params[:appointment][:grade],
      homeroom: params[:appointment][:homeroom],
      slot_id: params[:appointment][:slot_id])
    render "/appointments/confirmation"
  end
  
end
