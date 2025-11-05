cask "nextai-translator" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "46529f0efcfecf49f67e3d4765619a0db362dba501d51f6a8b5ac781a7e69238",
         intel: "928bdd97657bfb8504d6748f5e171f1f34b7ab44dc600fccdff5235ca47a8dc5"

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
