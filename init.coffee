exports.configure = [
  {
    type: 'input',
    name: 'name',
    message: 'What is the name of your project?'
  },
  {
    type: 'input',
    name: 'github_username',
    message: 'What is your github username?'
  },
  {
    type: 'input',
    name: 'description',
    message: 'Describe your project'
  },
  {
    type: 'input',
    name: 'color',
    message: 'what color should the site be? (hex or clrs.cc name)'
  },
  {
    type: 'input',
    name: 'menu_items',
    message: 'what items do you want in the menu (separate with spaces)'
  }
]

exports.before_render = (sprout, done) ->
  sprout.config_values.menu_items = sprout.config_values.menu_items.split(' ')
  done()
