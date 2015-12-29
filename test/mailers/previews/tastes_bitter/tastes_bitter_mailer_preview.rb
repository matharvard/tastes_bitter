module TastesBitter

  # Preview all emails at http://localhost:3000/rails/mailers/tastes_bitter_mailer
  class TastesBitterMailerPreview < ActionMailer::Preview

    def error_message
      error_info = {
        message: "A message",
        file_or_page: "A file or page",
        line_number: "A line number",
        user_agent: "A user agent",
        current_page: "A page",
        platform: "A platform",
        browser_name: "A browser",
        browser_version: "A browser version"
      }

      ::TastesBitter::JavascriptMailer.javascript_error(error_info)
    end

  end

end
