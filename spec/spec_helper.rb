$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'active_record'
require 'denshobato_chat_panel'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define(version: 1) do
  create_table :ducks do |t|
    t.string :name,      default: ''
    t.string :last_name, default: ''
    t.string :avatar, default: ''
  end
end

class Duck < ActiveRecord::Base
  def full_name
    self.class.name
  end

  def image
    # Hardcoded

    'https://secure.gravatar.com/avatar/e13743a7f1db7f4246badd6fd6ff54ff/?d=mm'
  end
end
