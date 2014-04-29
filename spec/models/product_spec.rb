require 'spec_helper'

describe Product do
  it { should have_valid(:name).when("Green Monster") }
  it { should have_valid(:description).when("Kale, romaine, ginger, apple")}
  it { should have_valid(:image_url).when('www.dailyjarjuice.com')}
  it { should have_valid(:price).when('10', '7', '5') }
  
end
