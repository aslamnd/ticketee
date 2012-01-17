require 'spec_helper'

describe Admin::UsersController do

  describe "GET 'index'" do

    let(:user) { create_user! }

    context "standard user" do
      before do
        sign_in(:user, user)
      end

      it "are not be able to access the index action" do
        get :index
        response.should redirect_to(root_path)
        flash[:alert].should eql("You must be an admin to do that.")
      end

    end

  end

end
