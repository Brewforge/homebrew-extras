cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "4f42314a363fcebc540d0b564d63167b808c8bf89cd36e09ae3f8474021a4e85",
         intel: "1840c7eff132247770276607e8e92fc8354c34d2f167a7d01d0356bb0dbf5cbe"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "jan"
  desc "Open Source Alternative To Chatgpt that Runs 100% Offline on Your Computer"
  homepage "https://github.com/janhq/jan/"

  livecheck do
    url origin.to_s
    strategy :github_latest
  end

  auto_updates true

  app "jan.app"

  zap trash: [
    "~/Library/Application Support/jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end
