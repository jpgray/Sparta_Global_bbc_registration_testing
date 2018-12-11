require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  attr_accessor :homepage_link

  def initialize
    @homepage_link = 'https://www.bbc.co.uk/'
    @sign_in_link_id = 'idcta-link'
  end

  def visit_homepage
    visit('https://www.bbc.co.uk/')
  end

  def click_sign_in
    click_link('idcta-link')
  end

end
