require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe InstagramCommentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # InstagramComment. As you add validations to InstagramComment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InstagramCommentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all instagram_comments as @instagram_comments" do
      instagram_comment = InstagramComment.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:instagram_comments)).to eq([instagram_comment])
    end
  end

  describe "GET #show" do
    it "assigns the requested instagram_comment as @instagram_comment" do
      instagram_comment = InstagramComment.create! valid_attributes
      get :show, {:id => instagram_comment.to_param}, valid_session
      expect(assigns(:instagram_comment)).to eq(instagram_comment)
    end
  end

  describe "GET #new" do
    it "assigns a new instagram_comment as @instagram_comment" do
      get :new, {}, valid_session
      expect(assigns(:instagram_comment)).to be_a_new(InstagramComment)
    end
  end

  describe "GET #edit" do
    it "assigns the requested instagram_comment as @instagram_comment" do
      instagram_comment = InstagramComment.create! valid_attributes
      get :edit, {:id => instagram_comment.to_param}, valid_session
      expect(assigns(:instagram_comment)).to eq(instagram_comment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new InstagramComment" do
        expect {
          post :create, {:instagram_comment => valid_attributes}, valid_session
        }.to change(InstagramComment, :count).by(1)
      end

      it "assigns a newly created instagram_comment as @instagram_comment" do
        post :create, {:instagram_comment => valid_attributes}, valid_session
        expect(assigns(:instagram_comment)).to be_a(InstagramComment)
        expect(assigns(:instagram_comment)).to be_persisted
      end

      it "redirects to the created instagram_comment" do
        post :create, {:instagram_comment => valid_attributes}, valid_session
        expect(response).to redirect_to(InstagramComment.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved instagram_comment as @instagram_comment" do
        post :create, {:instagram_comment => invalid_attributes}, valid_session
        expect(assigns(:instagram_comment)).to be_a_new(InstagramComment)
      end

      it "re-renders the 'new' template" do
        post :create, {:instagram_comment => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested instagram_comment" do
        instagram_comment = InstagramComment.create! valid_attributes
        put :update, {:id => instagram_comment.to_param, :instagram_comment => new_attributes}, valid_session
        instagram_comment.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested instagram_comment as @instagram_comment" do
        instagram_comment = InstagramComment.create! valid_attributes
        put :update, {:id => instagram_comment.to_param, :instagram_comment => valid_attributes}, valid_session
        expect(assigns(:instagram_comment)).to eq(instagram_comment)
      end

      it "redirects to the instagram_comment" do
        instagram_comment = InstagramComment.create! valid_attributes
        put :update, {:id => instagram_comment.to_param, :instagram_comment => valid_attributes}, valid_session
        expect(response).to redirect_to(instagram_comment)
      end
    end

    context "with invalid params" do
      it "assigns the instagram_comment as @instagram_comment" do
        instagram_comment = InstagramComment.create! valid_attributes
        put :update, {:id => instagram_comment.to_param, :instagram_comment => invalid_attributes}, valid_session
        expect(assigns(:instagram_comment)).to eq(instagram_comment)
      end

      it "re-renders the 'edit' template" do
        instagram_comment = InstagramComment.create! valid_attributes
        put :update, {:id => instagram_comment.to_param, :instagram_comment => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested instagram_comment" do
      instagram_comment = InstagramComment.create! valid_attributes
      expect {
        delete :destroy, {:id => instagram_comment.to_param}, valid_session
      }.to change(InstagramComment, :count).by(-1)
    end

    it "redirects to the instagram_comments list" do
      instagram_comment = InstagramComment.create! valid_attributes
      delete :destroy, {:id => instagram_comment.to_param}, valid_session
      expect(response).to redirect_to(instagram_comments_url)
    end
  end

end
