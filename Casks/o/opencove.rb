cask "opencove" do
  version "0.2.0-nightly.20260401.1"
  sha256 "07d3e5ca5f91c07301a6ed20262c59fc25593de3b904ec6f40aac0beb81f199d"

  url "https://github.com/DeadWaveWave/opencove/releases/download/v#{version}/OpenCove-#{version}-mac-arm64.dmg"
  name "OpenCove"
  desc "Infinite canvas workspace for agents, tasks, knowledge, and research"
  homepage "https://github.com/DeadWaveWave/opencove"

  livecheck do
    url :url
    regex(/OpenCove[._-]v?(\d+(?:\.\d+)*-nightly\.\d+\.\d+)-mac-arm64\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.nil?

          match[1]
        end
      end.flatten.compact
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
