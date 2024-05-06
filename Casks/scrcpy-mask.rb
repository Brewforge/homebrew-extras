cask "scrcpy-mask" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "c28f0d3ef3c6c9eff7a6e71aea7bffdb453e28dcce297b58dce102cb1db0af2a",
         intel: "993027c0016f7776fc43ba598b38d2a0aa017b71671334e721c385be4185e72a"

  url "https://github.com/AkiChase/scrcpy-mask/releases/download/v#{version}/scrcpy-mask_#{version}_#{arch}.dmg"
  name "scrcpy-mask"
  desc "A Scrcpy client in Rust & Tarui aimed at providing mouse and key mapping to control Android device"
  homepage "https://github.com/AkiChase/scrcpy-mask"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "scrcpy-mask.app"

  zap trash: []
end
