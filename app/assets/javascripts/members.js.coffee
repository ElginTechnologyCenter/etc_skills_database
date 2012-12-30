$ ->
  new_experience = (skill) ->
    $body = $('.experiences tbody')
    $row = $body.find('tr:first').clone()
    rows = $body.find('tr').length

    $row.find('.name').html(skill)

    $years = $row.find('.years')
    $years.attr('id', $years.attr('id').replace(/_\d_/, '_'+rows+'_'))
    $years.attr('name', $years.attr('name').replace(/\[\d\]/, '['+rows+']'))
    $years.val('')

    console.log($row.find('.id'))
    $row.find('.id').remove()
    console.log($row.find('.id'))

    $body.append($row)

  $('#new_skill').on 'keydown', (e) ->
    if e.keyCode == 13
      new_experience(this.value)
      this.value = ''
      e.preventDefault()
      return false
