defmodule PhxAwsCognitoWeb.Router do
  use PhxAwsCognitoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxAwsCognitoWeb do
    pipe_through :api
  end
end
