defmodule DoggieTagCx.UserManager.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :doggie_tag_list_backend,
    error_handler: DoggieTagCx.UserManager.ErrorHandler,
    module: DoggieTagCx.UserManager.Guardian

  # If there is an authorization header, restrict it to an access token and validate it
  plug(Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"})
  # Load the user if either of the verifications worked
  plug(Guardian.Plug.LoadResource, allow_blank: true)
end
