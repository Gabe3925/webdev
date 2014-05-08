require 'spec_helper'

describe Score do
  it{should validates_associated :dishes, :judges}
end
