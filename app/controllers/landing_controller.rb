class LandingController < ApplicationController
  def index
    @main_areas = MainArea.all
    # display list of main areas
    @recent_problems = Bproblem.all.last(5)
    # 5 most recent boulder problems created
    @feature = Bproblem.find_by(name: 'Walk Into The Sky')
  end
end
