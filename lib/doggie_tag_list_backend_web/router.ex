defmodule DoggieTagCxWeb.Router do
  use DoggieTagCxWeb, :router

  pipeline :auth do
    plug(DoggieTagCx.UserManager.Pipeline)
  end

  pipeline :ensure_auth do
    plug(Guardian.Plug.EnsureAuthenticated)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", DoggieTagCxWeb do
    pipe_through([:api, :auth, :ensure_auth])

    post("/orders", OrderController, :create)
    get("/orders", OrderController, :index)
  end

  scope "/api/token", DoggieTagCxWeb do
    pipe_through([:api, :auth])
    post("/", TokenController, :create)
    post("/refresh", TokenController, :refresh)
  end
end
