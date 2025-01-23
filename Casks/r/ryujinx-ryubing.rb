cask "ryujinx-ryubing" do
  version "1.2.81"
  sha256 "ad444ebe3cd03ee1cda30723f7f8d16e4319f6c2374e9d2f9ad8f19adf04a724"

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
