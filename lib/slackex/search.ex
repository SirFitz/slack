defmodule Slack.Search do
  @moduledoc """
  Search your team's files and messages.
  """

  @doc """
  This method allows to to search both messages
  and files in a single call.
  """
  def all(query, options \\ %{}) do
    params = options |> Map.merge(%{query: query})
    Slack.request("search.all", params)
  end

  @doc """
  This method returns files matching a search query.
  """
  def files(query, options \\ %{}) do
    params = options |> Map.merge(%{query: query})
    Slack.request("search.files", params)
  end

  @doc """
  This method returns messages matching a search query.
  """
  def messages(query, options \\ %{}) do
    params = options |> Map.merge(%{query: query})
    Slack.request("search.messages", params)
  end
end
