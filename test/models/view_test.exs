defmodule Rumbl.ViewTest do
  use Rumbl.ModelCase

  alias Rumbl.View

  @valid_attrs %{"\\": "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = View.changeset(%View{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = View.changeset(%View{}, @invalid_attrs)
    refute changeset.valid?
  end
end
