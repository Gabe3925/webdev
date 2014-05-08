require 'spec_helper'

describe Judgment do
  it{should validate_associated(:judge, :episode)}
end
