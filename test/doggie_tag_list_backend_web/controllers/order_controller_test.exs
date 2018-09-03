defmodule DoggieTagCxWeb.DoggieTagCxControllerTest do
  use DoggieTagCxWeb.ConnCase

  alias DoggieTagCx.Order

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
    end
  end
end
