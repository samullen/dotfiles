defmodule Beholder do
  defstruct memory: 0,
            reductions: 0,
            links: [],
            monitors: [],
            monitored_by: [],
            registered_name: nil,
            message_queue_len: 0,
            messages: [],
            status: nil

  @base_fields [
    :memory,
    :reductions,
    :links,
    :monitors,
    :monitored_by,
    :registered_name,
    :message_queue_len,
    :messages,
    :status
  ]

  def look(pid) when is_pid(pid) do
    pid
    |> Process.info(@base_fields)
    |> Enum.into(%Beholder{})
  end

  def look(name) when not is_nil(name) and is_atom(name) do
    name
    |> Process.whereis()
    |> look()
  end

  def look(_), do: nil

  def named_pids do
    Process.list
    |> Enum.map(fn pid ->
      {_, module} = Process.info(pid, :registered_name);
      {pid, module}
    end)
    |> Enum.filter(fn {_pid, name} -> name != [] end)
  end

  def processes_by_memory do
    Process.list
    |> Enum.map(fn pid ->
      [registered_name: name, memory: memory] = Process.info(pid, [:registered_name, :memory])
      {pid, memory, name}
    end)
    |> Enum.sort_by(&(elem(&1, 1)))
  end

  defimpl Collectable do
    def into(list) do
      collector = fn
        beholder, {:cont, {key, value}} ->
          Map.put(beholder, key, value)

        beholder, :done ->
          beholder

        _beholder, :halt ->
          :ok
      end

      {list, collector}
    end
  end
end
