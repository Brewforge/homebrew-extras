cask "ryujinx" do
  version "1.1.1106"
  sha256 "2df6cd791dab0205abd4608df9ccbe9127ba4887a3e44ed1fa839c8b987219d2"

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
