cask "mogan" do
  version "2026.3.10"
  sha256 "2bc0aab6dcf7f3f6f0780645f595d6ac4ac643cae5da4fc191ebd9202bd0dffa"

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
