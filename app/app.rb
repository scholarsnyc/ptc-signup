class Ptc < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  get :index do
    @slots = Slot.all
    render 'appointments/list'
  end

end
