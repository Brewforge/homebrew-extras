cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.225.0.0"
  sha256 arm:   "f5b28759ab7dd8214d382c503462f0cf53a20d812831b46cc497e80b8a60476a",
         intel: "3dff03a1a87fec4fb71c0e818cef939a86a0a07ee7ec8279053755d430089e39"

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
