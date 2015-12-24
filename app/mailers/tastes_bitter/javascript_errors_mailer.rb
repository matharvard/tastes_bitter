module TastesBitter
  class JavascriptErrorsMailer < ApplicationMailer

    def javascript_error(error_info)
      mail(
        to: ::TastesBitter.configuration.mailer_receiver,
        from: ::TastesBitter.configuration.mailer_sender,
        subject: ::TastesBitter.configuration.mailer_subject
      )
    end

  end
end
