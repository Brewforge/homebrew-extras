cask "notchdrop" do
  version "2.2.8"
  sha256 "1e8f6401bc9c38e9c204d95d3498745bd8f9aa22e3fdce9cf8fca2fcb326a414"

  url "https://github.com/Lakr233/NotchDrop/releases/download/#{version}/NotchDrop.zip"
  name "NotchDrop"
  desc "Transform your MacBook's notch into a convenient file drop zone."
  homepage "https://github.com/Lakr233/NotchDrop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "NotchDrop.app"

  zap trash: ""
end
