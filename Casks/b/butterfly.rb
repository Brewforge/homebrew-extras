cask "butterfly" do
  version "2.5.5"
  sha256 "1975eef4052551518ab02b94bf9027daafa287a1cb10f480ce91d5b1b1201ec9"

  url "https://github.com/LinwoodDev/Butterfly/releases/download/v#{version}/linwood-butterfly-macos.dmg"
  name "Butterfly"
  desc "Powerful, minimalistic, cross-platform, opensource note-taking app"
  homepage "https://github.com/LinwoodDev/Butterfly"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "butterfly.app"

  zap trash: [
    "~/Library/Application Scripts/dev.linwood.butterfly",
    "~/Library/Containers/butterfly",
  ]
end
