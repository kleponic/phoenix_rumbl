defmodule Rumbl.Repo do
  @moduledoc """
  In memory repository.
  """
  def all(Rumbl.User) do
    [%{Rumbl.User{id:  "1", name: "Macan", username: "macan", password: "macan123"}},
     %{Rumbl.User{id:  "2", name: "Singa", username: "singa", password: "singa123"}},
     %{Rumbl.User{id:  "3", name: "Gajah", username: "gajah", password: "gajah123"}}]
  end

  def all(_module), do:[]

  def get(module, id) do 
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map -> 
      Enum.all? (params, fn {key, val} -> Map.get(map, key) == val end)
  end
end
