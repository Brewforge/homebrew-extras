cask "cc-switch" do
  version "3.10.3"
  sha256 "cebd92b2b550afd4ef5146f12301f11d534cd2b2ed84ae1431e1c73906f343a8"

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-macOS.zip"
  name "CC Switch"
  desc "Configuration manager for Claude Code, Codex, Gemini and OpenCode"
  homepage "https://github.com/farion1231/cc-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "CC Switch.app"

  zap trash: [
    "~/.cc-switch",
    "~/Library/Application Support/com.ccswitch.desktop",
    "~/Library/Caches/com.ccswitch.desktop",
    "~/Library/Preferences/com.ccswitch.desktop.plist",
    "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
    "~/Library/WebKit/com.ccswitch.desktop",
  ]
end
