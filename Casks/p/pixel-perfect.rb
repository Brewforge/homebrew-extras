cask "pixel-perfect" do
  version "1.4"
  sha256 "31b98c0d3afc71df6e4ea99be82c89d3d910ca7dbb2c6d553254e4ac86f25ece"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip"
  name "Pixel Perfect"
  desc "Application lets you increase the text size of iPhone and iPad apps"
  homepage "https://github.com/cormiertyshawn895/PixelPerfect"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Pixel Perfect/Pixel Perfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]

  caveats <<~EOS
    After downloading Pixel Perfect, double click to open it. macOS may prompt you “Pixel Perfect cannot be opened because it is from an unidentified developer.” This is expected.

    To open Pixel Perfect, right-click on Pixel Perfect, then click “Open” as shown below.
  EOS
end
