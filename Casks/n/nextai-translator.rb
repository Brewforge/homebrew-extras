cask "nextai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "3acc34952ad6928210461e95077bbaf8f28e3e709aa071cf44287fa80e10ad25",
         intel: "93b187fc8fbbedd20fb361a3c439a0ad95568a2a6426d2b42559eb7d5a63c9c3"

  url "https://github.com/nextai-translator/nextai-translator/releases/download/v#{version}/NextAI.Translator_#{version}_#{arch}.dmg"
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
