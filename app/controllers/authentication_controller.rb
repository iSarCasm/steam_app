class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:callback]

  def callback
    set_current_user request.env["omniauth.auth"].info.to_hash
    flash[:notice] = 'Successfully signed in with steam'
    redirect_to root_url
  end

  def destroy
    set_current_user nil
    flash[:notice] = 'Signed out successfully'
    redirect_to root_url
  end
end
