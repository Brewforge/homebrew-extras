cask "revezone" do
  version "1.0.0-alpha.18"
  sha256 "491b1a7ef3fc390420a5a2d5db39cb4cbf173cc7e488f58a079e01e16ade46fe"

  url "https://github.com/revezone/revezone/releases/download/#{version}/revezone-#{version}-arm64.dmg",
      verified: "github.com/revezone/revezone/"
  name "revezone"
  desc "Lightweight Local-First Graphic-Centric Productivity Tool"
  homepage "https://revezone.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "revezone.app"

  zap trash: [
    "~/Library/Application Support/revezone",
    "~/Library/Preferences/revezone.plist",
    "~/Library/Saved Application State/revezone.savedState",
  ]
end
