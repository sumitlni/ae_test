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

RSpec.describe ProductStrategiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ProductStrategy. As you add validations to ProductStrategy, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductStrategiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all product_strategies as @product_strategies" do
      product_strategy = ProductStrategy.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:product_strategies)).to eq([product_strategy])
    end
  end

  describe "GET #show" do
    it "assigns the requested product_strategy as @product_strategy" do
      product_strategy = ProductStrategy.create! valid_attributes
      get :show, {:id => product_strategy.to_param}, valid_session
      expect(assigns(:product_strategy)).to eq(product_strategy)
    end
  end

  describe "GET #new" do
    it "assigns a new product_strategy as @product_strategy" do
      get :new, {}, valid_session
      expect(assigns(:product_strategy)).to be_a_new(ProductStrategy)
    end
  end

  describe "GET #edit" do
    it "assigns the requested product_strategy as @product_strategy" do
      product_strategy = ProductStrategy.create! valid_attributes
      get :edit, {:id => product_strategy.to_param}, valid_session
      expect(assigns(:product_strategy)).to eq(product_strategy)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProductStrategy" do
        expect {
          post :create, {:product_strategy => valid_attributes}, valid_session
        }.to change(ProductStrategy, :count).by(1)
      end

      it "assigns a newly created product_strategy as @product_strategy" do
        post :create, {:product_strategy => valid_attributes}, valid_session
        expect(assigns(:product_strategy)).to be_a(ProductStrategy)
        expect(assigns(:product_strategy)).to be_persisted
      end

      it "redirects to the created product_strategy" do
        post :create, {:product_strategy => valid_attributes}, valid_session
        expect(response).to redirect_to(ProductStrategy.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved product_strategy as @product_strategy" do
        post :create, {:product_strategy => invalid_attributes}, valid_session
        expect(assigns(:product_strategy)).to be_a_new(ProductStrategy)
      end

      it "re-renders the 'new' template" do
        post :create, {:product_strategy => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested product_strategy" do
        product_strategy = ProductStrategy.create! valid_attributes
        put :update, {:id => product_strategy.to_param, :product_strategy => new_attributes}, valid_session
        product_strategy.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested product_strategy as @product_strategy" do
        product_strategy = ProductStrategy.create! valid_attributes
        put :update, {:id => product_strategy.to_param, :product_strategy => valid_attributes}, valid_session
        expect(assigns(:product_strategy)).to eq(product_strategy)
      end

      it "redirects to the product_strategy" do
        product_strategy = ProductStrategy.create! valid_attributes
        put :update, {:id => product_strategy.to_param, :product_strategy => valid_attributes}, valid_session
        expect(response).to redirect_to(product_strategy)
      end
    end

    context "with invalid params" do
      it "assigns the product_strategy as @product_strategy" do
        product_strategy = ProductStrategy.create! valid_attributes
        put :update, {:id => product_strategy.to_param, :product_strategy => invalid_attributes}, valid_session
        expect(assigns(:product_strategy)).to eq(product_strategy)
      end

      it "re-renders the 'edit' template" do
        product_strategy = ProductStrategy.create! valid_attributes
        put :update, {:id => product_strategy.to_param, :product_strategy => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested product_strategy" do
      product_strategy = ProductStrategy.create! valid_attributes
      expect {
        delete :destroy, {:id => product_strategy.to_param}, valid_session
      }.to change(ProductStrategy, :count).by(-1)
    end

    it "redirects to the product_strategies list" do
      product_strategy = ProductStrategy.create! valid_attributes
      delete :destroy, {:id => product_strategy.to_param}, valid_session
      expect(response).to redirect_to(product_strategies_url)
    end
  end

end
