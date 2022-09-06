class WinesController < ApplicationController
  def index
    # @wines = ["Dido", "MonteAlicia", "Rebels de Batea"]
    @response = Excon.get("https://wine-server-homemadechef.herokuapp.com/wines")
    return nil if response.status != 200
    JSON.parse(response.body)
  end
end