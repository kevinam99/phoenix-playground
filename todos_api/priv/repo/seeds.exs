# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TodosApi.Repo.insert!(%TodosApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias TodosApi.Repo
alias TodosApi.Todos.Todo

Repo.insert!(%Todo{title: "Go to the gym", done: true})
Repo.insert!(%Todo{title: "Clean room", done: false})
Repo.insert!(%Todo{title: "Meet the manager", done: false})
