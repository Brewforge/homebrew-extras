cask "revezone" do
  version "1.0.0-alpha.18"
  sha256 "491b1a7ef3fc390420a5a2d5db39cb4cbf173cc7e488f58a079e01e16ade46fe"

  url "https://github.com/revezone/revezone/releases/download/#{version}/revezone-#{version}-arm64.dmg",
      verified: "github.com/revezone/revezone/"
  name "revezone"
  desc "Lightweight Local-First Graphic-Centric Productivity Tool"
  homepage "https://revezone.com/"

  livecheck do
    url "https://github.com/revezone/revezone/releases"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?(\d+(\.\d+){2}(-alpha\.\d+)?)}i)
      next if match.blank?

      "#{match[1]}"
    end
  end

  auto_updates true

  app "revezone.app"

  zap trash: [
    "~/Library/Application Support/revezone",
    "~/Library/Preferences/revezone.plist",
    "~/Library/Saved Application State/revezone.savedState",
  ]
end
