defmodule LearningPhoenixWeb.UserController do
  use LearningPhoenixWeb, :controller
  alias LearningPhoenix.{Repo, User}

  def index(conn, _params) do
    conn
    |> assign(:test, Repo.all(User))
    |> render(:index)
  end

  def edit(conn, _params) do
    render(conn, :edit)
  end

  def new(conn, _params) do
    render(conn, :new)
  end

  def show(conn, _params) do
    render(conn, :show)
  end

  def create(conn, _params) do
    #redirect(conn, url(~p"/users/#{id}"))
    redirect(conn, url(~p"/users"))
  end

  def update(conn, _params) do
    #redirect(conn, url(~p"/users/#{id}"))
    redirect(conn, url(~p"/users"))
  end

  def delete(conn, _params) do
    redirect(conn, url(~p"/users"))
  end
end
