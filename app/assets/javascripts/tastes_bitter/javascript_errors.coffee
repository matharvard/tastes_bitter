# `column_number` and `error_object` aren't supported across all browsers, so
# they are given a default value of `null`.
window.onerror = (message, file_or_page, line_number, column_number = null, error_object = null) ->
  xhr = null
  form = null

  form = new FormData
  form.append 'message', message
  form.append 'file_or_page', file_or_page
  form.append 'line_number', line_number
  form.append 'column_number', column_number
  form.append 'user_agent', navigator.userAgent
  form.append 'current_page', window.location.href
  form.append 'stack_trace', error_object?.stack

  xhr?.abort()
  xhr = new XMLHttpRequest
  xhr.open 'POST', '/__javascript_errors', true
  xhr.send form

  # Return `false` to call the default handler.
  false
