defmodule BootstrapFormDemoWeb.PageController do
  use BootstrapFormDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
