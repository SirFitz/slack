defmodule Slack.DoNotDisturb do
  @moduledoc """
  Adjust and view Do Not Disturb settings for
  team members
  """

  @doc """
  Ends the user's currently scheduled Do Not Disturb session immediately.
  """
  def end_dnd(options \\ %{}) do
    Slack.request("dnd.endDnd", options)
  end

  @doc """
  Ends the current user's snooze mode immediately.
  """
  def end_snooze(options \\ %{}) do
    Slack.request("dnd.endSnooze", options)
  end

  @doc """
  Provides information about a user's current
  Do Not Disturb settings.
  """
  def info(options \\ %{}) do
    Slack.request("dnd.info", options)
  end

  @doc """
  Adjusts the snooze duration for a user's Do Not
  Disturb settings. If a snooze session is not
  already active for the user, invoking this method
  will begin one for the specified duration.
  """
  def set_snooze(num_minutes, options \\ %{}) do
    params = options |> Map.merge(%{num_minutes: num_minutes})
    Slack.request("dnd.setSnooze", params)
  end

  @doc """
  Provides information about the current Do Not Disturb
  settings for users of a Slack team.
  """
  def team_info(options \\ %{}) do
    Slack.request("dnd.teamInfo", options)
  end
end
