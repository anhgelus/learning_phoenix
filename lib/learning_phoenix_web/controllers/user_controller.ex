defmodule LearningPhoenixWeb.UserController do
  use LearningPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
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
