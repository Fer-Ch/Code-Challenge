class HomePage
  include PageObject

  text_field(:searchInput, class: ['gLFyf','gsfi'])

  def clickSearchButton()
    @browser.button(class: 'gNO89b').click
  end
end