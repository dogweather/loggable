require 'wiki_dip/loggable'

RSpec.describe WikiDip::Loggable do
  include WikiDip::Loggable

  it "creates and sends log messages to STDERR" do
    expect {
      logger.info('User signed in')
    }.to output(/signed in/).to_stderr
  end
end
