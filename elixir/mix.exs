defmodule MyApp.Mixfile do
  use Mix.Project

  def project do
    [aliases: aliases()]
  end

  defp aliases do
    [hello: &hello/1]
  end

  defp hello(_) do
    Mix.shell.info "hello"
  end
end