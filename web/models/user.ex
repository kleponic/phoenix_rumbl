defmodule Rumbl.User do
    use Rumbl.Web, :model

    schema "user" do
        field :name, :string
        field :username, :string
        field :password, :string, virtual: true
        field :password_hash, :string
        
        timestamps()
    end

    def changeset(model, params \\%{}) do
        model
        |> cast(params, ~w(name username), [])
        |> validate_length(:username, min: 5, max: 20)
    end
 
end