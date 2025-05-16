cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.223.6.0"
  sha256 arm:   "5f2f424c3d0cee2afd6826715de7fda096b5664e43dbfc15347b8794acd5eb7a",
         intel: "a46a873511022257f5677e9d0285b9b5dd9d98f8d26ae43a8b844661e805e915"

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
