require 'spec_helper'

describe Sighting do
  it { should validate_presence_of :specie_id }
  it { should validate_presence_of :date}
  it { should validate_presence_of :longitude}
  it { should validate_presence_of :latitude}

end
	