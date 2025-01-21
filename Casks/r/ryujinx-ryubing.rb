cask "ryujinx-ryubing" do
  version "1.2.80"
  sha256 "a1d908595b9a6abdf607cd2b5d1af8f6fc761964e1538df1825bb8f736732fcc"

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
