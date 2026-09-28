cask "butterfly" do
  version "2.6.0"
  sha256 "00ce88ed98408753721b8a89d2685cc514dd0be9b88bcd98ccbfd3db43dc8b33"

  url "https://github.com/LinwoodDev/Butterfly/releases/download/v#{version}/linwood-butterfly-macos.dmg"
  name "Butterfly"
  desc "Powerful, minimalistic, cross-platform, opensource note-taking app"
  homepage "https://github.com/LinwoodDev/Butterfly"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "butterfly.app"

  zap trash: [
    "~/Library/Application Scripts/dev.linwood.butterfly",
    "~/Library/Containers/butterfly",
  ]
end
