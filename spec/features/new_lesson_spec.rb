require 'rails_helper'

describe 'adds a new lesson' do
  it 'adds a new lesson 'do
    week = Week.create(:name => 'Week1')
    visit week_path(week)
    click_on 'New Daily Lesson'
    fill_in 'Name', :with => 'Name1'
    fill_in 'Day', :with => 'Monday'
    fill_in 'Body', :with => 'body'
    fill_in 'Page', :with => '1'
    click_on 'Create Day'
    expect(page).to have_content 'Name1'
  end
end
