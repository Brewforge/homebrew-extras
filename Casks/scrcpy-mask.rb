cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "4af61be2a50337f8e0d7e8679f0cd6a74d91b55a034d6c2ce68cdd2a303fcef4",
         intel: "ba077b49bf23489f4a465f565d77fd4cb5ba42a014900692973871b68de3847a"

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
