defmodule ExSwapi.Impl do

  @baseuri     "https://swapi.co/api"

  # SWAPI.co
  @films_uri      "#{@baseuri}/films/"
  @people_uri     "#{@baseuri}/people/"
  @planets_uri    "#{@baseuri}/planets/"
  @species_uri    "#{@baseuri}/species/"
  @vehicles_uri   "#{@baseuri}/vehicles/"
  @starships_uri  "#{@baseuri}/starships/"

  alias ExSwapi.Request

  # ALL RESOURCES
  def all(:films),      do: @films_uri |> make_request
  def all(:people),     do: @people_uri |> make_request
  def all(:planets),    do: @planets_uri |> make_request
  def all(:species),    do: @species_uri |> make_request
  def all(:vehicles),   do: @vehicles_uri |> make_request
  def all(:starships),  do: @starships_uri |> make_request

  # RESOURCE BY ID
  def find(:films,     id), do: "#{@films_uri}#{id}/"     |> make_request
  def find(:people,    id), do: "#{@people_uri}#{id}/"    |> make_request
  def find(:planets,   id), do: "#{@planets_uri}#{id}/"   |> make_request
  def find(:species,   id), do: "#{@species_uri}#{id}/"   |> make_request
  def find(:vehicles,  id), do: "#{@vehicles_uri}#{id}/"  |> make_request
  def find(:starships, id), do: "#{@starships_uri}#{id}/" |> make_request

  defp make_request(uri), do: Request.get(uri)

end
