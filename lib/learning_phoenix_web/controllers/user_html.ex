defmodule LearningPhoenixWeb.UserHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use LearningPhoenixWeb, :html

  embed_templates "user_html/*"
end
