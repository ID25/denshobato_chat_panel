module DenshobatoChatPanel
  module Core
    def denshobato_chat_panel
      adds_chat_panel_methods
    end

    private

    def adds_chat_panel_methods
      class_eval do
        include DenshobatoChatPanel::ChatPanelHelper
      end
    end
  end
end
