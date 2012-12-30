$ ->
  change_index = ($el, index, value) ->
    $el.attr('id', $el.attr('id').replace('replace_this', index))
    $el.attr('name', $el.attr('name').replace('replace_this', index))
    $el.val(value)

  new_experience = (skill) ->
    $body = $('.experiences tbody')
    $row = $body.find('tr.template').clone()
    rows = $body.find('tr').length.toString()

    $row.attr('style', '')
    $row.removeClass('template')

    $row.find('.name span').html(skill)
    change_index($row.find('.name input'), rows, skill)

    change_index($row.find('.years'), rows, '')

    $body.append($row)

  $('#new_skill').on 'keydown', (e) ->
    if e.keyCode == 13 # enter
      e.preventDefault()
      new_experience(this.value)
      this.value = ''
      return false
