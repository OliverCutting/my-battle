feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in(:player_1_name, with: 'Keith')
    fill_in(:player_2_name, with: 'Leonard')
    click_button('Submit')
    expect(page).to have_content ('Keith vs. Leonard')
  end
end