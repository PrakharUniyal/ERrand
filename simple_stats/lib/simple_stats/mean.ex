# lib/simple_stats/mean.ex
defmodule SimpleStats.Mean do
    @moduledoc false

    @doc ~S"""
    The mean is the sum of all values over the number of values.

    ## Examples

        iex> SimpleStats.Mean.mean([])
        nil
        iex> SimpleStats.Mean.mean([1,2,3,4,5])
        3.0
        iex> SimpleStats.Mean.mean([1.5,-2.1,3,4.5,5])
        2.38

    """
    def mean([]) do 
        nil
    end
    def mean(list) do
        Enum.sum(list) / Kernel.length(list)
    end
end
