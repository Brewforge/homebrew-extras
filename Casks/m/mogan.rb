cask "mogan" do
  version "2026.3.6"
  sha256 "f8ca35ca57250a4141654fde69adbf16fa01751b598a2ae5a3477abcf7f7247c"

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
