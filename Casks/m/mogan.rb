cask "mogan" do
  version "2026.3.7"
  sha256 "cc684e8fe4f01ed3f742ac6f8c2839dc852f0a0938620040b039ae62a603e15f"

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
