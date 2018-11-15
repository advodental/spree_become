describe Spree::Admin::UsersController, type: :controller do
  stub_authorization!
  let(:admin) { create(:admin_user) }
  let(:user) { create(:user) }

  context 'GET #switch_session' do
    before do
      allow_any_instance_of(Spree::Admin::BaseController).to receive(:spree_current_user).and_return(admin)
    end

    it 'should switch user session' do
      spree_get :switch_session, id: user.id
      expect(request.env['warden'].user.id).to eq(user.id)
    end
  end
end