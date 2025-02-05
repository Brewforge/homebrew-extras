cask "tmexclude" do
  version "0.2.2"
  sha256 "2884526ff5ba06e966923d1555822baf7b6e6dea5ce66b24dee2ff2f5d7619a9"

  url "https://github.com/PhotonQuantum/tmexclude/releases/download/v#{version}/TimeMachine.Exclude_#{version}_universal.dmg"

  name "TimeMachine Exclude"
  desc "Exclude undesired files (node_modules, target, etc) from your TimeMachine backup"
  homepage "https://github.com/PhotonQuantum/tmexclude"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "TimeMachine Exclude.app"

  zap trash: [
    "~/Library/Application Support/me.lightquantum.tmexclude",
    "~/Library/Preferences/me.lightquantum.tmexclude.plist",
    "~/Library/Saved Application State/me.lightquantum.tmexclude.savedState",
  ]
end
