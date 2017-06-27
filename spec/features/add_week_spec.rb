require 'rails_helper'

describe 'add a week' do
  it "adds a week" do
    visit weeks_path
    click_on 'Create Weekly Section'
    fill_in 'Name', :with => 'week 1'
    click_on 'Create Week'
    expect(page).to have_content 'week 1'
    end
  end


  # day = Day.create(:name => "Name1", :day => "Monday", :body => "body", :page => "1", :week_id => week.id)
