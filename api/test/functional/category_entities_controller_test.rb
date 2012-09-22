require 'test_helper'

class CategoryEntitiesControllerTest < ActionController::TestCase
  setup do
    @category_entity = category_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_entity" do
    assert_difference('CategoryEntity.count') do
      post :create, category_entity: { description: @category_entity.description, name: @category_entity.name }
    end

    assert_response 201
  end

  test "should show category_entity" do
    get :show, id: @category_entity
    assert_response :success
  end

  test "should update category_entity" do
    put :update, id: @category_entity, category_entity: { description: @category_entity.description, name: @category_entity.name }
    assert_response 204
  end

  test "should destroy category_entity" do
    assert_difference('CategoryEntity.count', -1) do
      delete :destroy, id: @category_entity
    end

    assert_response 204
  end
end
