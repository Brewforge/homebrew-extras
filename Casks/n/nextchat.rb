cask "nextchat" do
  version "2.16.0"
  sha256 :no_check

  url "https://file.nextchat.club/app/macos-latest.dmg"
  name "NextChat"
  desc "Cross-platform ChatGPT/Gemini UI"
  homepage "https://nextchat.club/download"

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
