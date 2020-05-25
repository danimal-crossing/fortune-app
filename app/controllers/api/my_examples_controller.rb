class Api::MyExamplesController < ApplicationController

  def fortune_action
    fortunes = ["You will become rich!", "You will become poor.", "You will need to pay up front .. for you will die in 7 days."]
    @fortune = fortunes.sample
    render "fortune.json.jb"
  end

  def lotto_action
    @numbers = []
    6.times do
      @numbers << rand(1..60)
    end
    render "lotto.json.jb"
  end

end
