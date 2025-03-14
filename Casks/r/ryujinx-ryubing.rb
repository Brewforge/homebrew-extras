cask "ryujinx-ryubing" do
  version "1.2.86"
  sha256 "49fcd62a6a5b484a5b4bf7f3615a12fb8c4535bf8bbe4e9424159ce69183d515"

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
