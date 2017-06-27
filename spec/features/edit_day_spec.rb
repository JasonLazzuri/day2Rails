require 'rails_helper'

describe "edits a day" do
  it "edits a day" do
    week = Week.create(:name => 'Home stuff')
    day = Day.create(:name => "Name1", :day => "Monday", :body => "body", :page => "1", :week_id => week.id)
    visit week_day_path(week,day)
    click_on 'Edit'
    fill_in 'Name', :with => 'Ruby'
    click_on 'Update Day'
    expect(page).to have_content 'Ruby'
  end
end
