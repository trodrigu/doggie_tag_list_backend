# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DoggieTagCx.Repo.insert!(%DoggieTagCx.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias DoggieTagCx.User
alias DoggieTagCx.Repo

if Mix.env() == :dev do
  changes = %{name: "some user", email: "test@test.com", password: "supersecret"}

  %User{}
  |> User.registration_changeset(changes)
  |> Repo.insert!()
end
