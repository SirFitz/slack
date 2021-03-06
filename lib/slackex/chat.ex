defmodule Slack.Chat do
  @moduledoc """
  Post chat messages to Slack.
  """

  @doc """
  This method deletes a message from a channel.
  """
  def delete(channel, timestamp, options \\ %{}) do
    params = options |> Map.merge(%{channel: channel, ts: timestamp})
    Slack.request("chat.delete", params)
  end

  @doc """
  This method posts a message to a public channel,
  private group, or IM channel.
  """
  def post_message(channel, text, options \\ %{}) do
    params = options |> Map.merge(%{
      channel: channel,
      text: text
    })

    Slack.request("chat.postMessage", params)
  end

  @doc """
  This method updates a message in a channel.
  """
  def update(channel, timestamp, text, options \\ %{}) do
    params = options |> Map.merge(%{
      channel: channel,
      timestamp: timestamp,
      options: options
    })

    Slack.request("chat.update", params)
  end
end
