defmodule CsvImporterTest do
  use ExUnit.Case
  doctest CsvImporter

  test "greets the world" do
    assert CsvImporter.hello() == :world
  end
end
