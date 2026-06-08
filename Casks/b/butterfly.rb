cask "butterfly" do
  version "2.5.3"
  sha256 "0a82cc36cc553ab324c79dcef61e8653dc12192e60d41130ee10cbfeeb6795f7"

  url "https://github.com/LinwoodDev/Butterfly/releases/download/v#{version}/linwood-butterfly-macos.dmg"
  name "Butterfly"
  desc "Powerful, minimalistic, cross-platform, opensource note-taking app"
  homepage "https://github.com/LinwoodDev/Butterfly"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Butterfly.app"

  zap trash: [
    "~/Library/Application Scripts/dev.linwood.butterfly",
    "~/Library/Containers/butterfly",
  ]
end
