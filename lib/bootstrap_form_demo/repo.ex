defmodule BootstrapFormDemo.Repo do
  use Ecto.Repo,
    otp_app: :bootstrap_form_demo,
    adapter: Ecto.Adapters.Postgres
end
