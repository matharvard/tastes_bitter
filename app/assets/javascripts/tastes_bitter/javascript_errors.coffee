window.onerror = (message, file_or_page, line_number) ->
  xhr = null
  error_info = null
  form = null

  form = new FormData
  form.append 'message', message
  form.append 'file_or_page', file_or_page
  form.append 'line_number', line_number
  form.append 'user_agent', navigator.userAgent
  form.append 'current_page', window.location.href

  xhr?.abort()
  xhr = new XMLHttpRequest
  xhr.open 'POST', '/__javascript_errors', true
  xhr.send form

  # Return `false` to call the default handler. Returning `true` would skip it.
  false
