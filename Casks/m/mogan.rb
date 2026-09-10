cask "mogan" do
  version "2026.3.5"
  sha256 "677a922c6f762c153912ad04f0a001f623fede1898a0f51208b0f2533fb992aa"

  url "https://github.com/MoganLab/mogan/releases/download/v#{version}/mogan-release-#{version}-osx-arm64-stable.zip"
  name "Mogan STEM"
  desc "Structured STEM suite"
  homepage "https://mogan.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  container nested: "MoganSTEM-v#{version}-arm64-stable-Portable.zip"

  app "Mogan STEM.app"

  zap trash: [
    "~/Library/Application Support/XmacsLabs",
    "~/Library/Preferences/app.mogan.plist",
  ]
end
