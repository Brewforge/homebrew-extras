cask "ryujinx" do
  version "1.1.1104"
  sha256 "f3edb3db91c004961ea23904c1a1c21703aa74d974f5710c4d50aef3cae3dc0d"

  url "https://github.com/Ryujinx/release-channel-master/releases/download/#{version}/test-ava-ryujinx-#{version}-macos_universal.app.tar.gz",
      verified: "github.com/Ryujinx/release-channel-master/"
  name "Ryujinx"
  desc "Simple, experimental Nintendo Switch emulator"
  homepage "https://ryujinx.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ryujinx.app"

  zap trash: [
    "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState",
  ]
end
