defmodule DoggieTagCxWeb.DoggieTagCxControllerTest do
  use DoggieTagCxWeb.ConnCase

  alias DoggieTagCx.Order
  alias DoggieTagCx.Repo
  import Ecto.Query

  @create_attrs %{
    contact_number: "123-123-1234",
    design: "design",
    dog_name: "fifi",
    phone_number: "123-123-1234",
    shipping_address: "12345 stuff lane",
    size: "small",
    wood: "acacia"
  }

  describe "create order dog tag" do
    test "renders order dog tag when data is valid", %{conn: conn} do
      conn = post(conn, order_path(conn, :create), @create_attrs)
      order = Order |> Ecto.Query.first() |> Repo.one()
      assert order.contact_number == "123-123-1234"
      assert order.dog_name == "fifi"
      assert order.design == "design"
      assert order.phone_number == "123-123-1234"
      assert order.shipping_address == "12345 stuff lane"
      assert order.size == "small"
      assert order.wood == "acacia"
    end
  end

  describe "get orders" do
    test "renders list of orders", %{conn: conn} do
      Order.create(@create_attrs)
      conn = get(conn, order_path(conn, :index))
      orders = json_response(conn, 200)
      assert Enum.count(orders) == 1
    end
  end
end
