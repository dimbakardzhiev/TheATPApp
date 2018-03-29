require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get login_path
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { dob: @player.dob, first_name: @player.first_name, last_name: @player.last_name, nationality: @player.nationality } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get login_path
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { dob: @player.dob, first_name: @player.first_name, last_name: @player.last_name, nationality: @player.nationality } }
    assert_redirected_to login_path
  end

  test "should destroy player" do
    assert_difference('Player.count', 0) do
      delete player_url(@player)
    end

    assert_redirected_to login_path
  end
end
