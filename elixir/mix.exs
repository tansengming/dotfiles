defmodule MyApp.Mixfile do
  use Mix.Project

  def project do
    [aliases: aliases()]
  end

  defp aliases do
    [adobe_launchd: &adobe_launchd/1]
  end

  defp adobe_launchd(_) do
    Mix.shell.cmd "ls -l /Library/LaunchAgents ~/Library/LaunchAgents /Library/LaunchDaemons /System/Library/LaunchDaemons/ /System/Library/LaunchAgents/ | grep adobe"
  end
end
