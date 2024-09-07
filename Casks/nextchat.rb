cask "nextchat" do
  version "2.15.0"
  sha256 "7841a86a74e8fcaaa04018ffb9a99183212f461a0c3150184f89402c0af9c50f"

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
