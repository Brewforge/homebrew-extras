cask "mogan" do
  version "2026.3.9"
  sha256 "66633dfd9b70378c4de03f2acbc19d4daa1e94b29f2539f6cf3c96d064a67d58"

  url "https://github.com/MoganLab/mogan/releases/download/v#{version}/mogan-release-#{version}-osx-arm64-stable.zip"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  container nested: "MoganSTEM-v#{version}-arm64-stable-Portable.zip"

  app "Mogan STEM.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
