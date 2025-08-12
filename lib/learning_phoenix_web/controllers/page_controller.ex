defmodule LearningPhoenixWeb.PageController do
  use LearningPhoenixWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
