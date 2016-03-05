require 'denshobato_chat_panel/version'
require 'denshobato_chat_panel/engine' if defined?(Rails)

# Helpers for React-Redux
DenshobatoChatPanel.autoload :ReactHelper, 'denshobato_chat_panel/react_helper'

module DenshobatoChatPanel
  ActionView::Base.include DenshobatoChatPanel::ReactHelper if defined?(ActionView::Base)
end
