defmodule DoggieTagCxWeb.OrderView do
  use DoggieTagCxWeb, :view

  def render("show.json", %{order: order}) do
    %{
      contact_number: order.contact_number,
      design: order.design,
      dog_name: order.design,
      phone_number: order.design,
      shipping_address: order.design,
      size: order.design,
      wood: order.wood
    }
  end
end
