defmodule DoggieTagCxWeb.DoggieTagCxControllerTest do
  use DoggieTagCxWeb.ConnCase
  import DoggieTagCx.UserManager.Guardian

  alias DoggieTagCx.User
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
    test "return 401 when not auth'd", %{conn: conn} do
      Order.create(@create_attrs)

      conn =
        conn
        |> get(order_path(conn, :index))

      assert response(conn, 401) == "unauthenticated"
    end

    test "renders list of orders with auth", %{conn: conn} do
      changes = %{name: "hello", email: "hello@test.com", password: "asdfjkl;"}

      user =
        %User{}
        |> User.registration_changeset(changes)
        |> Repo.insert!()

      {:ok, token, _} = encode_and_sign(user, %{}, token_type: :access)

      Order.create(@create_attrs)

      conn =
        conn
        |> put_req_header("authorization", "Bearer: " <> token)
        |> get(order_path(conn, :index))

      orders = json_response(conn, 200)
      assert Enum.count(orders) == 1
    end
  end
end
