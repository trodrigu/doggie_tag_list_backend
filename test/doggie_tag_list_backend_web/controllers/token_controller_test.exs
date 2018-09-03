defmodule DoggieTagCxWeb.TokenControllerTest do
  use DoggieTagCxWeb.ConnCase
  alias DoggieTagCx.User
  alias DoggieTagCx.Repo

  def insert_user(attrs \\ %{}) do
    changes =
      Dict.merge(%{name: "Some User", email: "test@test.com", password: "supersecret"}, attrs)

    %User{}
    |> User.registration_changeset(changes)
    |> Repo.insert!()
  end

  setup config = %{conn: conn} do
    if email = config[:login_as] do
      user = insert_user(email: "test@test.com")

      conn =
        %{build_conn() | host: "api."}
        |> assign(:current_user, user)

      {:ok, conn: conn, user: user}
    else
      :ok
    end
  end

  defp create_payload(email, password) do
    %{"email" => email, "password" => password}
  end

  describe "create" do
    @tag login_as: "max"
    test "authenticates and returns the JWT and user ID when data is valid", %{
      conn: conn,
      user: user
    } do
      conn = post(conn, token_path(conn, :create), create_payload(user.email, user.password))
      user_id = user.id
      response = json_response(conn, 201)
      assert response["token"]
      assert response["user_id"] == user_id
    end

    @tag login_as: "max"
    test "does not authenticate and renders errors when the email and password are missing", %{
      conn: conn,
      user: _user
    } do
      conn = post(conn, token_path(conn, :create), %{"email" => ""})

      response = json_response(conn, 401)
      [error | _] = response["errors"]
      assert error["detail"] == "Please enter your email and password."
      refute response["token"]
      refute response["user_id"]
    end
  end
end
