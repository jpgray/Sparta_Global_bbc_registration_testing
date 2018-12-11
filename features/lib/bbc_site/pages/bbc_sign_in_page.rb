require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  def initialize
    @register_now_link_text = 'Register now'
  end

  def click_register_now
    click_link('Register now')
  end

  def click_over_13
    click_link('13 or over')
  end

  def enter_date_of_birth
    fill_in('day-input', :with => '14')
    fill_in('month-input', :with => '10')
    fill_in('year-input', :with => '1966')
    click_button('Continue')
  end

  def enter_password(pword)
    fill_in('password-input', :with => pword)
    click_button('Register')
  end

  def get_password_error_message
    find('#form-message-password').text
  end

end
