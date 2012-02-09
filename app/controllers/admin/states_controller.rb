class Admin::StatesController < Admin::BaseController

  def new
    @state = State.new
  end

  def create
    @state = State.new(params[:state])
    if @state.save
      redirect_to admin_states_path, :notice => "State has been created."
    else
      flash[:alert] = "State has not been created."
      render "new"
    end
  end

  def make_default
    @state = State.find(params[:id])
    @state.default!

    redirect_to admin_states_path, :notice => "#{@state.name} is now the default state."
  end

end
