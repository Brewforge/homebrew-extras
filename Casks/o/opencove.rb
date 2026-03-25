cask "opencove" do
  version "0.2.0-nightly.20260325.1"
  sha256 "08caaa36283a8122de97452b7fb891d1e470c4108299b02f53102a88ddb61c97"

  url "https://github.com/DeadWaveWave/opencove/releases/download/v#{version}/OpenCove-#{version}-mac-arm64.dmg",
      verified: "github.com/DeadWaveWave/opencove/"
  name "OpenCove"
  desc "Infinite canvas workspace for agents, tasks, knowledge, and research"
  homepage "https://github.com/DeadWaveWave/opencove"

  livecheck do
    url :url
    regex(%r{/v?([\d.]+(?:-nightly\.\d+\.\d+)?)/OpenCove-[\d.]+-nightly\.\d+\.\d+-mac-arm64\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true

  app "OpenCove.app"

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/OpenCove.app"
  end

  zap trash: [
    "~/Library/Application Support/opencove",
    "~/Library/Caches/opencove",
    "~/Library/Logs/opencove",
    "~/Library/Preferences/dev.deadwave.opencove.plist",
  ]
end
