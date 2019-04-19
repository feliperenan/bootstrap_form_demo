defmodule BootstrapFormDemoWeb.PageController do
  use BootstrapFormDemoWeb, :controller

  alias BootstrapFormDemo.Accounts
  alias BootstrapFormDemo.Accounts.User

  def index(conn, _params) do
    changeset = Accounts.change_user(%User{})

    render(conn, "index.html", changeset: changeset)
  end

  def create(conn, %{ "user" => user_params }) do
    with {:ok, user} <- Accounts.create_user(user_params) do
      put_flash(conn, :success, "User created with success")
    else
      {:error, changeset} ->
        render(conn, "index.html", changeset: changeset)
    end
  end
end
