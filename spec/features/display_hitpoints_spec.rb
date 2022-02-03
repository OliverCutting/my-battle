feature 'Show players hit poitns' do
  scenario 'Start of game' do
    sign_in_and_play

    expect(page).to have_content 'Mittens: 100HP'
  end
end