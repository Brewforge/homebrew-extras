cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "117c983fd17475f88ecb0ea554bdac548e5b7d8a449fecb7e0caab8f58b9d482",
         intel: "33aa73fa9bf6c0d4e2f401f2a344158a6648a29922bdce52eb0976a44a3431d1"

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
