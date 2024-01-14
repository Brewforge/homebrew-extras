cask "ryujinx" do
  version "1.1.1109"
  sha256 "a4874eada9dc40b93b0925f6d01752dfc64406c72a3833d2e46d3cedd2b888c3"

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
