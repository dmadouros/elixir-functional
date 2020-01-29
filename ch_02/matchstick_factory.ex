defmodule MatchstickFactory do
  def boxes(matchstick_count) do
    big_box_count = div(matchstick_count, 50)
    matchstick_count = rem(matchstick_count, 50)

    medium_box_count = div(matchstick_count, 20)
    matchstick_count = rem(matchstick_count, 20)

    small_box_count = div(matchstick_count, 5)
    matchstick_count = rem(matchstick_count, 5)

    %{big: big_box_count, medium: medium_box_count, small: small_box_count, remaining_matchsticks: matchstick_count}
  end
end
