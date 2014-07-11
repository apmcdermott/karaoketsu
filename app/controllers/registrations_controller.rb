class RegistrationsController < Devise::RegistrationsController
  before_action :set_artists

  def set_artists
    @artists = Artist.all
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :artist_id, :range_low, :range_high)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :artist_id, :range_low, :range_high)
  end
end
