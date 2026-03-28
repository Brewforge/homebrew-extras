cask "opencove" do
  version "0.2.0-nightly.20260328.1"
  sha256 "1ff2aab39c103a14a849b7f1fbee3634c0c0ac23c5291a7c0604d0f014e6d222"

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
