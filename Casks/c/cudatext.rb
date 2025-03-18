cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.221.0.0"
  sha256 arm:   "f272b251e0d78104400d5fe88b0197b8920305af9ca4d1b580d4a0962af62de7",
         intel: "195a6a9e3ac1e70673222b4075db23ba1b357fa2026b1a2e5f2168b8ddd4eacb"

  url "https://downloads.sourceforge.net/cudatext/release/#{version}/cudatext-macos-cocoa-#{arch}-#{version}.dmg.zip?viasf=1",
      verified: "sourceforge.net/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/best_release.json"
    regex(%r{release/([^/]+)/cudatext-macos-cocoa-#{arch}-(\d+(\.\d+)+).dmg}i)
  end

  app "CudaText.app"

  preflight do
    system_command "xattr",
                   args: ["-cr", "#{staged_path}/CudaText.app"]
  end

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
