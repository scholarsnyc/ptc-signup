Ptc.controllers :slots do

  get :show, :with => :id do
    @slot = Slot.get(params[:id])
    render 'slots/show'
  end
  
  get :create do
    render 'slots/create'
  end
  
end
