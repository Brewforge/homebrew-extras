cask "nextchat" do
  version "2.12.3"
  sha256 "251e566fe9f3791143d0d6c6373f044e46f1f8f1593bac82f92a318e88f06877"

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
