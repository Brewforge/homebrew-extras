cask "openai-translator" do
  version "0.4.21"
  sha256 "71124edfa7dc61a57dd2eb3cc92ffa680bd1fe64af926414162169b687eabb99"

  mirror = "https://mirror.ghproxy.com/"
  origin = "https://github.com/openai-translator/openai-translator/releases/download/v#{version}/OpenAI.Translator_#{version}_aarch64.dmg"

  url "#{mirror}#{origin}",
      verified: "mirror.ghproxy.com/"
  name "OpenAI Translator"
  desc "Cross-platform Translatior based on ChatGPT API"
  homepage "https://github.com/openai-translator/openai-translator"

  livecheck do
    url origin.to_s
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
