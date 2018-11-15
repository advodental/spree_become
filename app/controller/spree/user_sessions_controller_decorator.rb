Spree::UserSessionsController.class_eval do
  def restore_session
    @imitated_by = Spree::User.find_by(email: session[:imitated_by])
    redirect_to root_url and return unless @imitated_by
    sign_out spree_current_user
    bypass_sign_in(@imitated_by)
    session.delete(:imitated_by)
    session.delete(:imitated_to)
    redirect_to admin_users_path
  end
end