IEx.configure(
  colors: [
    syntax_colors: [
      number: :light_yellow,
      atom: :light_cyan,
      string: :light_black,
      boolean: :red,
      nil: [:magenta, :bright],
    ],
    ls_directory: :cyan,
    ls_device: :yellow,
    doc_code: :green,
    doc_inline_code: :magenta,
    doc_headings: [:cyan, :underline],
    doc_title: [:cyan, :bright, :underline],
    eval_result: [ :cyan, :bright ]
  ],
  default_prompt:
    "#{IO.ANSI.green}%prefix#{IO.ANSI.reset} " <>
    ":: #{IO.ANSI.cyan}%counter#{IO.ANSI.reset} >",
  alive_prompt:
    "#{IO.ANSI.green}%prefix#{IO.ANSI.reset} " <>
    "(#{IO.ANSI.yellow}%node#{IO.ANSI.reset}) " <>
    ":: #{IO.ANSI.cyan}%counter#{IO.ANSI.reset} >",
  history_size: 50,
  inspect: [
    pretty: true,
    limit: :infinity,
    charlists: :as_lists,
    binaries: :as_strings,
    printable_limit: :infinity
  ]
  # width: 80
)

import_if_available(Ecto.Query)

File.exists?(Path.expand("~/.iex/beholder.exs")) && import_file("~/.iex/beholder.exs")

dwarves = ["Fili","Kili", "Oin", "Gloin", "Thorin", "Dwalin", "Balin", "Bifur",
           "Bofur", "Bombur", "Dori", "Nori", "Ori"]
fellowship = %{
  hobbits: ["Frodo", "Samwise", "Merry", "Pippin"],
  humans: ["Aragorn", "Boromir"],
  dwarves: ["Gimli"],
  elves: ["Legolas"],
  wizards: ["Gandolf"]
}

exit = fn -> System.stop() end
ls = fn -> Code.loaded_files() end
vars = fn -> binding end
