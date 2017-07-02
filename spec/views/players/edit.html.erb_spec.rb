require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :name => "MyString",
      :game => "MyString",
      :age => ""
    ))
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input[name=?]", "player[name]"

      assert_select "input[name=?]", "player[game]"

      assert_select "input[name=?]", "player[age]"
    end
  end
end
