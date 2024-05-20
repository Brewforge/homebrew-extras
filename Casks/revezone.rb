cask "revezone" do
  version "1.0.0-alpha.18"
  sha256 "95986d845466153e541b2d09bf8025fa8c612771b7b47e8a70c74c6b080d1416"

  url "https://github.com/revezone/revezone/releases/download/#{version}/revezone-#{version}-arm64.dmg",
      verified: "github.com/revezone/revezone/"
  name "revezone"
  desc "Lightweight Local-First Graphic-Centric Productivity Tool To Build Your Second Brain"
  homepage "https://revezone.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "revezone.app"

  zap trash: []
end
