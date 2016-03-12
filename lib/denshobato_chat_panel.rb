require 'denshobato_chat_panel/version'
require 'denshobato_chat_panel/engine' if defined?(Rails)

# Helpers for React-Redux

DenshobatoChatPanel.autoload :ReactHelper, 'denshobato_chat_panel/react_helper'

module DenshobatoChatPanel
  require 'denshobato_chat_panel/core'

  DenshobatoChatPanel.autoload :ChatPanelHelper, 'denshobato_chat_panel/chat_panel_helper'
  ActiveRecord::Base.extend DenshobatoChatPanel::Core

  ActionView::Base.include DenshobatoChatPanel::ReactHelper if defined?(ActionView::Base)
end
