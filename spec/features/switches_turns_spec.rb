feature 'switches turns' do
  scenario 'after an attack' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content "Mittens's turn"
  end
end