cask "nextchat" do
  version "2.15.8"
  sha256 "0dcc6d75b7afbd986c091e0d70691afc9361526a65f8483eefe2cbe25c6f90dd"

  url "https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web/releases/download/v#{version}/NextChat_#{version}_universal.dmg"
  name "NextChat"
  desc "Cross-platform ChatGPT/Gemini UI"
  homepage "https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NextChat.app"

  uninstall quit: "com.yida.chatgpt.next.web"

  zap trash: [
    "~/Library/Application Support/com.yida.chatgpt.next.web",
    "~/Library/Caches/com.yida.chatgpt.next.web",
    "~/Library/Saved Application State/com.yida.chatgpt.next.web.savedState",
    "~/Library/WebKit/com.yida.chatgpt.next.web",
  ]
end
