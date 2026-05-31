cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.234.3.1"
  sha256 arm:   "c97d2ac4450ad23fa3067c3e1ad428f450b89e337a53daa4d75cd07e19c4d864",
         intel: "a7fdfa222a9748dd9e3fc1fcf5d592c278b35f12625a4a9b599be8df73a4e692"

  url "https://downloads.sourceforge.net/cudatext/release/#{version}/cudatext-macos-cocoa-#{arch}-#{version}.zip?viasf=1",
      verified: "sourceforge.net/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/best_release.json"
    strategy :page_match do |page|
      data = JSON.parse(page)["platform_releases"]["mac"]["filename"]
      match = data.match(/cudatext-macos-cocoa-#{arch}-(\d+(\.\d+)+)\.zip/i)
      next if match.blank?

      match[1].to_s
    end
  end

  depends_on :macos

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
