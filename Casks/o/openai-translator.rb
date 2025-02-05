cask "openai-translator" do
  version "0.4.34"
  sha256 "6df834fe74f099d16947706722123c7b89e30157745037341d9caf1ee935a153"

  url "https://github.com/openai-translator/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_aarch64.dmg"
  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/openai-translator/openai-translator"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OpenAI Translator.app"

  zap trash: [
    "~/Library/Application Support/xyz.yetone.apps.openai-translator",
    "~/Library/Caches/xyz.yetone.apps.openai-translator",
    "~/Library/Logs/DiagnosticReports/OpenAI Translator-2024-03-02-230629.ips",
    "~/Library/Saved Application State/xyz.yetone.apps.openai-translator.savedState",
    "~/Library/WebKit/xyz.yetone.apps.openai-translator",
  ]
end
