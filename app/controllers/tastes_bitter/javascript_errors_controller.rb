require 'browser'
require_dependency "tastes_bitter/application_controller"

module TastesBitter

  class JavascriptErrorsController < ApplicationController

    # Responsible for handling errors sent from the browser, parsing the data,
    # and sending the email with the information about the error.
    def create
      browser = Browser.new(ua: params["user_agent"])

      error_info = {
        message: params["message"],
        file_or_page: params["file_or_page"],
        line_number: params["line_number"],
        user_agent: params["user_agent"],
        current_page: params["current_page"],
        platform: browser.platform.to_s.humanize,
        browser_name: browser.name,
        browser_version: browser.full_version
      }

      ::TastesBitter::JavascriptErrorsMailer.javascript_error(error_info).deliver_later

      respond_to do |format|
        format.js { render nothing: true, status: :ok }
      end
    end

  end

end
