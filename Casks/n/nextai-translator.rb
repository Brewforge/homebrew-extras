cask "nextai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "6071f04a636492dd51b921bcc546ebd0ebb01f59a655a5995b6410469c853329",
         intel: "6c3ab4b88c62779c20d205b388f2d3cff157056a3e7bd87584321cf32833841b"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_#{arch}_darwin.dmg"
  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/nextai-translator/nextai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/xyz.yetone.apps.nextai-translator",
    "~/Library/Caches/xyz.yetone.apps.nextai-translator",
    "~/Library/Saved Application State/xyz.yetone.apps.nextai-translator.savedState",
    "~/Library/WebKit/xyz.yetone.apps.nextai-translator",
  ]
end
