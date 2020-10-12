# User class
class User
  def initialize(tg_id, data_base)
    @tg_id = tg_id
    @data_store = Data_store.new(@tg_id, data_base)
  end

  def add_groups(message_text)
    @data_store.add(groups(message_text))
  end

  def remove_groups(message_text)
    @data_store.remove(groups(message_text))
  end

  def list_of_groups
    @data_store.list
  end

  def check_groups
  end

  private

  def groups(message)
    # to-do
  end
end