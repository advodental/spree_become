describe Spree::Admin::UsersController, type: :controller do
  stub_authorization!
  let(:user) { create(:user) }

  context 'GET #switch_session' do
    it 'should switch user session' do
      spree_get :switch_session, id: user.id
      expect(request.env['warden'].user.id).to eq(user.id)
    end
  end
end