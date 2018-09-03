defmodule DoggieTagCxWeb.OrderController do
  alias DoggieTagCx.Order
  use DoggieTagCxWeb, :controller

  def create(conn, attrs) do
    with {:ok, %Order{} = order} <- Order.create(attrs) do
      render(conn, "show.json", %{order: order})
    end
  end
end
