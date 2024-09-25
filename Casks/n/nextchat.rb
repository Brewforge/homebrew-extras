cask "nextchat" do
  version "2.15.3"
  sha256 "eb1cf551d626449701f9c91532e26500f4ec78c063c717f763335ad937616451"

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
