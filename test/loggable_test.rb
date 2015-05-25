require 'minitest'
require 'wiki_dip/loggable'

class LoggableTest < Minitest::Test
  include WikiDip::Loggable

  def test_creates_and_sends_log_messages_to_stderr
    assert_output(nil, /signed in/) do
      logger.info('User signed in')
    end
  end
end
