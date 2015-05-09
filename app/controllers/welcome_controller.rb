class WelcomeController<ApplicationController

  before_action :current_user

  def index
    if user_signed_in?
      if current_user != nil
        @user = current_user
      else
        @user = guest_user
      end
      @chooseits = @user.chooseits
    end
  end

end
