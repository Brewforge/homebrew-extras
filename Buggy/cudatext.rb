cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.217.0.0,1.216.6.0"
  sha256 arm:   "f48caf287a91d46e09ba4423a02050331a74cba336bfe6a5a17e59714d9bec76",
         intel: "f48caf287a91d46e09ba4423a02050331a74cba336bfe6a5a17e59714d9bec76"

  url "https://sourceforge.net/projects/cudatext/files/release/#{version.csv.first}/cudatext-macos-cocoa-#{arch}-#{version.csv.second}.dmg/download",
      verified: "sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    # url "https://sourceforge.net/projects/cudatext/best_release.json"
    # regex(%r{release/([^/]+)/cudatext-macos-cocoa-amd64-(.+).dmg}i)
    # strategy :page_match do |page, regex|
    #   JSON.parse(page)["platform_releases"]["mac"]["filename"].scan(regex).map { |match| match[0] + "," + match[1] }
    # end
    skip "Skip for Audit Error"
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
