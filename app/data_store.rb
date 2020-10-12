class Data_store
  def initialize(user, data_base)
  end

  def add(urls)
    @data_store.set("#{@tg_id}:data", urls.to_json)
  end

  def remove(urls)
    @data_store.set("#{@tg_id}:data", urls.to_json)
  end

  def list
    @data_store.get("#{@tg_id}:data")
  end
end