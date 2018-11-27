defmodule DoggieTagCxWeb.OrderController do
  alias DoggieTagCx.Order
  alias DoggieTagCx.Repo
  use DoggieTagCxWeb, :controller

  def create(conn, attrs) do
    with {:ok, %Order{} = order} <- Order.create(attrs) do
      render(conn, "show.json", %{order: order})
    end
  end

  def index(conn, _attrs) do
    render(conn, "index.json", orders: Repo.all(Order))
  end
end
