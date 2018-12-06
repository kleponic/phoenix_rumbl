defmodule Rumbl.Video do
  use Rumbl.Web, :model

  schema "video" do
    field :url, :string
    field :title, :string
    field :description, :string
    belongs_to :user, Rumbl.User
    belongs_to :category, Rumbl.Category

    timestamps()
  end
  
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:url, :title, :description, :category_id])
    |> validate_required([:url, :title])
    |> assoc_constraint(:category)
  end
end
