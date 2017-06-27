require 'rails_helper'

describe "edits a week" do
  it "edits a week" do
    week = Week.create(:name => 'Home stuff')
    # day = Day.create(:name => "Name1", :day => "Monday", :body => "body", :page => "1", :week_id => week.id)
    visit week_path(week)
    click_on 'Edit'
    fill_in 'Name', :with => 'Week2'
    click_on 'Update Week'
    expect(page).to have_content 'Week2'
  end
end
