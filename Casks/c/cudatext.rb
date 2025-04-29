cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.223.5.2"
  sha256 arm:   "0522f76428c5ac5d48a0f4c3e4da44669f2de025bc7ea331a52aeba334ac6460",
         intel: "fdabb851ac6b4b2962d8586efb77ebb7382d75a441367b11cd4e9e346302f8b7"

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
