require 'rails_helper'

describe Week do
  it { should validate_presence_of :name}
  it { should have_many :days }
end
