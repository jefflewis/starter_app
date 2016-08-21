# Dropdowns
$('.ui.dropdown').dropdown()

# Tabs
$('.ui.tab').tab()
$('.ui.tabular.menu .item').tab()

# Messages
$('.message .close').on 'click', ->
  $(@).closest('.message').transition('fade')

# Popups
$('.popup').popup()

# Dropdowns
$('.ui.dropdown').dropdown(
  placeholder: false
)
$('.ui.dropdown.allow-add').dropdown(
  allowAdditions: true
)


# Radio Buttons
$('.ui.radio.checkbox').checkbox()

# Accordions
$('.ui.accordion').accordion()
