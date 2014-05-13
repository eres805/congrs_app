require 'spec_helper'

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

describe RepresentativesController do

  # This should return the minimal set of attributes required to create a valid
  # Representative. As you add validations to Representative, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RepresentativesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all representatives as @representatives" do
      representative = Representative.create! valid_attributes
      get :index, {}, valid_session
      assigns(:representatives).should eq([representative])
    end
  end

  describe "GET show" do
    it "assigns the requested representative as @representative" do
      representative = Representative.create! valid_attributes
      get :show, {:id => representative.to_param}, valid_session
      assigns(:representative).should eq(representative)
    end
  end

  describe "GET new" do
    it "assigns a new representative as @representative" do
      get :new, {}, valid_session
      assigns(:representative).should be_a_new(Representative)
    end
  end

  describe "GET edit" do
    it "assigns the requested representative as @representative" do
      representative = Representative.create! valid_attributes
      get :edit, {:id => representative.to_param}, valid_session
      assigns(:representative).should eq(representative)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Representative" do
        expect {
          post :create, {:representative => valid_attributes}, valid_session
        }.to change(Representative, :count).by(1)
      end

      it "assigns a newly created representative as @representative" do
        post :create, {:representative => valid_attributes}, valid_session
        assigns(:representative).should be_a(Representative)
        assigns(:representative).should be_persisted
      end

      it "redirects to the created representative" do
        post :create, {:representative => valid_attributes}, valid_session
        response.should redirect_to(Representative.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved representative as @representative" do
        # Trigger the behavior that occurs when invalid params are submitted
        Representative.any_instance.stub(:save).and_return(false)
        post :create, {:representative => {  }}, valid_session
        assigns(:representative).should be_a_new(Representative)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Representative.any_instance.stub(:save).and_return(false)
        post :create, {:representative => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested representative" do
        representative = Representative.create! valid_attributes
        # Assuming there are no other representatives in the database, this
        # specifies that the Representative created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Representative.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => representative.to_param, :representative => { "these" => "params" }}, valid_session
      end

      it "assigns the requested representative as @representative" do
        representative = Representative.create! valid_attributes
        put :update, {:id => representative.to_param, :representative => valid_attributes}, valid_session
        assigns(:representative).should eq(representative)
      end

      it "redirects to the representative" do
        representative = Representative.create! valid_attributes
        put :update, {:id => representative.to_param, :representative => valid_attributes}, valid_session
        response.should redirect_to(representative)
      end
    end

    describe "with invalid params" do
      it "assigns the representative as @representative" do
        representative = Representative.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Representative.any_instance.stub(:save).and_return(false)
        put :update, {:id => representative.to_param, :representative => {  }}, valid_session
        assigns(:representative).should eq(representative)
      end

      it "re-renders the 'edit' template" do
        representative = Representative.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Representative.any_instance.stub(:save).and_return(false)
        put :update, {:id => representative.to_param, :representative => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested representative" do
      representative = Representative.create! valid_attributes
      expect {
        delete :destroy, {:id => representative.to_param}, valid_session
      }.to change(Representative, :count).by(-1)
    end

    it "redirects to the representatives list" do
      representative = Representative.create! valid_attributes
      delete :destroy, {:id => representative.to_param}, valid_session
      response.should redirect_to(representatives_url)
    end
  end

end
