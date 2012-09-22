require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { body: @complaint.body, permalink: @complaint.permalink, proposal: @complaint.proposal, title: @complaint.title }
    end

    assert_response 201
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    put :update, id: @complaint, complaint: { body: @complaint.body, permalink: @complaint.permalink, proposal: @complaint.proposal, title: @complaint.title }
    assert_response 204
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_response 204
  end
end
