cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.210.0.0"
  sha256 arm:   "b07faa4dd0adf72f3404b48414a666dd0ccd336206c5764b28f67ec82f6888b2",
         intel: "f49431d5bb658d0e3fc9bb44a01290234d0a3a1f71a7eec112fb8c84bda029cc"

  url "http://downloads.sourceforge.net/project/cudatext/release/#{version.before_comma}/cudatext-macos-cocoa-amd64-#{version.after_comma}.dmg",
      verified: "sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    # url "https://sourceforge.net/projects/cudatext/best_release.json"
    # regex(/release\/([^\/]+)\/cudatext-macos-cocoa-amd64-(.+).dmg/i)
    # strategy :page_match do |page, regex|
    #   JSON.parse(page)["platform_releases"]["mac"]["filename"].scan(regex).map { |match| match[0] + "," + match[1] }
    # end
    skip "Skip for Audit Error"
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
