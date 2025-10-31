cask "butterfly" do
  version "2.4.0"
  sha256 "197cf3e35396ebc3f80cf1107913c0b7c138709795f52517394fbf586b4ec65d"

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
