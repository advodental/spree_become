Spree::UserSessionsController.class_eval do
  def restore_session
    @imitated_by = Spree::User.find_by(email: session[:imitated_by])
    path = session[:redirect_path] || admin_users_path
    redirect_to path and return unless @imitated_by
    sign_out spree_current_user
    bypass_sign_in(@imitated_by)
    session.delete(:imitated_by)
    session.delete(:imitating_user_email)
    redirect_to path
  end
end
