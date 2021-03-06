require 'test_helper'

class BrokersControllerTest < ActionController::TestCase
  setup do
    @broker = brokers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brokers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create broker" do
    assert_difference('Broker.count') do
      post :create, broker: { broker_details: @broker.broker_details, broker_name: @broker.broker_name, features: @broker.features, locations: @broker.locations, office_hour: @broker.office_hour, products: @broker.products, support: @broker.support, trading_functionality: @broker.trading_functionality }
    end

    assert_redirected_to broker_path(assigns(:broker))
  end

  test "should show broker" do
    get :show, id: @broker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @broker
    assert_response :success
  end

  test "should update broker" do
    patch :update, id: @broker, broker: { broker_details: @broker.broker_details, broker_name: @broker.broker_name, features: @broker.features, locations: @broker.locations, office_hour: @broker.office_hour, products: @broker.products, support: @broker.support, trading_functionality: @broker.trading_functionality }
    assert_redirected_to broker_path(assigns(:broker))
  end

  test "should destroy broker" do
    assert_difference('Broker.count', -1) do
      delete :destroy, id: @broker
    end

    assert_redirected_to brokers_path
  end
end
