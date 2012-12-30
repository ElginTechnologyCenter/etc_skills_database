$ ->
  new_experience = (skill) ->
    $body = $('.experiences tbody')
    $row = $body.find('tr.template').clone()
    rows = $body.find('tr').length.toString()

    $row.attr('style', '')
    $row.removeClass('template')

    $row.find('.name').html(skill)

    $years = $row.find('.years')
    $years.attr('id', $years.attr('id').replace('replace_this', rows))
    $years.attr('name', $years.attr('name').replace('replace_this', rows))
    $years.val('')

    console.log($row.find('.id'))
    $row.find('.id').remove()
    console.log($row.find('.id'))

    $body.append($row)

  $('#new_skill').on 'keydown', (e) ->
    if e.keyCode == 13
      e.preventDefault()
      new_experience(this.value)
      this.value = ''
      return false
