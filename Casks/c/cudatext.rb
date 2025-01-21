cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.217.0.0,1.216.6.0"
  sha256 :no_check

  url "https://sourceforge.net/projects/cudatext/files/latest/download",
      verified: "sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/best_release.json"
    regex(%r{release/([^/]+)/cudatext-macos-cocoa-aarch64-(.+).dmg}i)
    strategy :page_match do |page, regex|
      JSON.parse(page)["platform_releases"]["mac"]["filename"].scan(regex).map { |match| match[0] + "," + match[1] }
    end
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
