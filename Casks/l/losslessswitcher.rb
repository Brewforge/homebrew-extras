cask "losslessswitcher" do
  version "1.1.0"
  sha256 "8b4b8a7ae19df9c9c135a281b48a4306803b53fc98933affa450897343e6a3e2"

  url "https://github.com/vincentneo/LosslessSwitcher/releases/download/#{version}/LosslessSwitcher-#{version.major_minor}.app.zip"
  name "LosslessSwitcher"
  desc "Automated Apple Music Lossless Sample Rate Switching for Audio Devices"
  homepage "https://github.com/vincentneo/LosslessSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LosslessSwitcher.app"

  zap trash: "~/Library/Preferences/com.vincent-neo.LosslessSwitcher.plist"
end
