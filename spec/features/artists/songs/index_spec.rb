#As a user
#When I visit an Artist's SOngs index
#Then I see the titles all of that Artist's SOngs
#And I see that each title is a link to the songs show page


require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
   @prince = Artist.create!(name: 'Prince')
   @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
   @doves = @prince.songs.create!(title: 'When Doves Cry', length: 665, play_count: 99)
    end

  it 'shows all of the titles of the songs for the artist' do
   
    
    visit "/artists/#{@prince.id}/songs" #ask about this??

    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@doves.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@prince.id}/songs" #ask about this??

    click_on @purple.title

    expect(current_path).to eq("/songs/#{@purple.id}")
  end

  it 'shows the average song length for the artist' do
    visit "/artists/#{@prince.id}/songs" #ask about this??

    expect(page).to have_content("Average Song Length for Prince: 755")
  end
end