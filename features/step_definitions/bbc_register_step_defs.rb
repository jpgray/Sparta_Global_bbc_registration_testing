Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_now
end

When("I select I am over 13") do
  bbc_sign_in_page.click_over_13
end

When("I input my DOB") do
  bbc_sign_in_page.enter_date_of_birth
end

When("I input the necessary details with the password details {string}") do |string|
  bbc_sign_in_page.enter_password(string)
end

Then("I receive the corresponding error {string}") do |string|
  expect(bbc_sign_in_page.get_password_error_message).to eq string
end
