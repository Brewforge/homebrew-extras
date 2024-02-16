cask "ryujinx" do
  version "1.1.1197"
  sha256 "0ec045844755221e83f47a67b2885eaef327284bb4f3e36fd6de730559d715fc"

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

  zap trash: "~/Library/Saved Application State/org.ryujinx.Ryujinx.savedState"
end
