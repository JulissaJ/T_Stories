require 'spec_helper'

describe User do
  it { should have_valid(:username).when("Vandango") }
  it { should_not have_valid(:username).when(nil, '') }
end
