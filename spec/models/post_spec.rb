require 'spec_helper'

describe Post do
  it {should have_valid(:title).when('That was weird')}
  it {should_not have_valid(:title).when(nil,'')}

  it {should have_valid(:content).when('That was weird')}
  it {should_not have_valid(:content).when(nil,'')}
end
