cask "nextai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "6071f04a636492dd51b921bcc546ebd0ebb01f59a655a5995b6410469c853329",
         intel: "6c3ab4b88c62779c20d205b388f2d3cff157056a3e7bd87584321cf32833841b"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_#{arch}_darwin.dmg"
  name "NextAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/nextai-translator/nextai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "NextAI Translator.app"

  zap trash: [
    "/tmp/xyz_yetone_apps_openai_translator_si.sock",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/C/xyz.yetone.apps.openai-translator",
    "/var/folders/py/n14256yd5r5ddms88x9bvsv40000gn/T/xyz.yetone.apps.openai-translator",
    "~/Library/Application Support/xyz.yetone.apps.openai-translator",
    "~/Library/Caches/xyz.yetone.apps.openai-translator",
    "~/Library/WebKit/xyz.yetone.apps.openai-translator",
  ]
end
