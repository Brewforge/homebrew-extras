cask "ryujinx-ryubing" do
  version "1.2.82"
  sha256 "20eb23fa8fcd03ea789346d8eeff4b0ccd5e60b019c68ae7069ee318b2517851"

  url "https://github.com/Ryubing/Ryujinx/releases/download/#{version}/ryujinx-#{version}-macos_universal.app.tar.gz"
  name "Ryujinx"
  desc "Nintendo Switch emulator written in C#"
  homepage "https://github.com/Ryubing/Ryujinx"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ryujinx.app"

  zap trash: [
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/org.ryujinx.Ryujinx",
    "~/Library/Application Support/Ryujinx",
    "~/Library/Logs/Ryujinx",
    "~/Library/Preferences/org.ryujinx.Ryujinx.plist",
  ]
end
