defmodule DoggieTagCxWeb.Router do
  use DoggieTagCxWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", DoggieTagCxWeb do
    pipe_through(:api)

    post("/orders", OrderController, :create)
    post("/token", TokenController, :create)
    post("/token/refresh", TokenController, :refresh)
  end
end
