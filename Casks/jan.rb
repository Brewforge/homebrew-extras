cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "4501d0f3affba899e6d0ef33c089598e3a309086c0b8ecc6a37ee098d51f4656",
         intel: "c28b0a8ed09158bdffb80026b2034a732203cea995e4dc94a5deff915508ab0c"

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
