defmodule ElixirBlogApi.Repo do
  use Ecto.Repo,
    otp_app: :elixir_blog_api,
    adapter: Ecto.Adapters.Postgres
end
