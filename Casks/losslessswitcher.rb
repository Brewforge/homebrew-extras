cask "losslessswitcher" do
  version "1.0.0"
  sha256 "bf5e47312da4212c178b45df4968a40e0eb5accfe072a11f82a3814dd7dc20a6"

  url "https://github.com/vincentneo/LosslessSwitcher/releases/download/#{version}/LosslessSwitcher-v1.zip"
  name "LosslessSwitcher"
  desc "Automated Apple Music Lossless Sample Rate Switching for Audio Devices"
  homepage "https://github.com/vincentneo/LosslessSwitcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LosslessSwitcher.app"

  zap trash: [
    "~/Library/Preferences/com.vincent-neo.LosslessSwitcher.plist",
  ]
end
