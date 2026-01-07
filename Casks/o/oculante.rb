cask "oculante" do
  version "0.9.2"
  sha256 "c17742e6ebb28eb27f4696e43f5cb1446ac5636be83f051a2ddd60817500f698"

  url "https://github.com/woelper/oculante/releases/download/#{version}/oculante_mac_universal.zip"
  name "Oculante"
  desc "Fast and simple image viewer / editor for many operating systems"
  homepage "https://github.com/woelper/oculante"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Oculante.app"

  zap trash: [
    "~/Library/Application Support/oculante",
    "~/Library/Saved Application State/com.github.woelper.oculante.savedState",
  ]
end
