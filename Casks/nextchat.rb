cask "nextchat" do
  version "2.11.2"
  sha256 "3c43a6db2ec26f13f6929561ba32886f563ca42d2757ba502ab4a7dff7c2f3be"

  url "https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web/releases/download/v#{version}/NextChat_#{version}_universal.dmg"
  name "NextChat"
  desc "Cross-platform ChatGPT/Gemini UI"
  homepage "https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web"

  app "NextChat.app"

  uninstall quit: "com.yida.chatgpt.next.web"

  zap trash: [
      "~/.chatgpt",
      "~/Library/Application Support/com.yida.chatgpt.next.web",
      "~/Library/Caches/com.yida.chatgpt.next.web",
      "~/Library/Saved Application State/com.yida.chatgpt.next.web.savedState",
      "~/Library/WebKit/com.yida.chatgpt.next.web",
  ]
end
