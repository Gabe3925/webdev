# see all the calculations that have been done in the past
get "/calculator" do
  @records = Calculation.pluck(:calculation)
  slim :records
end
