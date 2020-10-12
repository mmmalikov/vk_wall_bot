# frozen_string_literal: true

module Router
  def self.resolve(message)
    user = User.new(message.from.id, Redis.current)
    message_text = message.text.to_s

    command = /^\\(.*) +/.match(message_text)
    case message_text
    when %r{^/start +} then 'you are started retard!'
    when %r{^/add +} then user.add_groups(message_text)
    when %r{^/delete +} then user.remove_groups(message_text)
    when %r{^/list +} then user.list_of_groups
    when %r{^/check +} then user.check_groups
    when %r{^/help +} then 'Nobody helps you motherfucker!'
    end
  end
end