module TastesBitter

  class Configuration

    attr_accessor :mailer_receiver
    attr_accessor :mailer_sender
    attr_accessor :mailer_subject_prefix

    def initialize
      @mailer_receiver = "notifications@example.com"
      @mailer_sender = "notifications@example.com"
      @mailer_subject_prefix = "[JavaScript Error] "
    end

  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end

end
