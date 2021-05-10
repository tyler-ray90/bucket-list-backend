require "test_helper"

class BucketlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bucketlist = bucketlists(:one)
  end

  test "should get index" do
    get bucketlists_url, as: :json
    assert_response :success
  end

  test "should create bucketlist" do
    assert_difference('Bucketlist.count') do
      post bucketlists_url, params: { bucketlist: { listitem: @bucketlist.listitem } }, as: :json
    end

    assert_response 201
  end

  test "should show bucketlist" do
    get bucketlist_url(@bucketlist), as: :json
    assert_response :success
  end

  test "should update bucketlist" do
    patch bucketlist_url(@bucketlist), params: { bucketlist: { listitem: @bucketlist.listitem } }, as: :json
    assert_response 200
  end

  test "should destroy bucketlist" do
    assert_difference('Bucketlist.count', -1) do
      delete bucketlist_url(@bucketlist), as: :json
    end

    assert_response 204
  end
end
