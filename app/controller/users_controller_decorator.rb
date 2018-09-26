Spree::Admin::UsersController.class_eval do
  def switch_session
    @user = Spree::User.find_by(id: params[:id])
    redirect_to root_url and return unless @user
    sign_out spree_current_user
    bypass_sign_in(@user)
    redirect_to root_url
  end
end