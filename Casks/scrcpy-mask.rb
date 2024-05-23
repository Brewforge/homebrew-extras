cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "c866b18de18939fc4d5a7a2f49ef32187b5edca93cce0744e392b7ca5b44176d",
         intel: "60c44f931a56a254c596dfb5b5fcd0067b5c4cb0842f2415cd5c131d8f1d4af0"

  url "https://github.com/AkiChase/scrcpy-mask/releases/download/v#{version}/scrcpy-mask_#{version}_#{arch}.dmg"
  name "scrcpy-mask"
  desc "Scrcpy client aimed at providing mouse and key mapping to control Android device"
  homepage "https://github.com/AkiChase/scrcpy-mask"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "scrcpy-mask.app"

  zap trash: [
    "~/Library/Application Support/com.akichase.mask",
    "~/Library/Caches/com.akichase.mask",
    "~/Library/Saved Application State/com.akichase.mask.savedState",
    "~/Library/WebKit/com.akichase.mask",
  ]
end
