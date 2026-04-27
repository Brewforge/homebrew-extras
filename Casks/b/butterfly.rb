cask "butterfly" do
  version "2.5.1"
  sha256 "b692dbd690091c8d3a27d81379ad5aae88b9645cda12f93436c079a962fa3cee"

  url "https://github.com/LinwoodDev/Butterfly/releases/download/v#{version}/linwood-butterfly-macos.dmg"
  name "Butterfly"
  desc "Powerful, minimalistic, cross-platform, opensource note-taking app"
  homepage "https://github.com/LinwoodDev/Butterfly"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Butterfly.app"

  zap trash: [
    "~/Library/Application Scripts/dev.linwood.butterfly",
    "~/Library/Containers/butterfly",
  ]
end
