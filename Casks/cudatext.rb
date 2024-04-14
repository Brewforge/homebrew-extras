cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.210.0.0"
  sha256 arm:   "b07faa4dd0adf72f3404b48414a666dd0ccd336206c5764b28f67ec82f6888b2",
         intel: "f49431d5bb658d0e3fc9bb44a01290234d0a3a1f71a7eec112fb8c84bda029cc"

  url "https://sourceforge.net/projects/cudatext/files/release/#{version}/cudatext-macos-cocoa-#{arch}-#{version}.dmg.zip",
      verified: "downloads.sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    url "https://sourceforge.net/projects/cudatext/files/release/"
    regex(/title="(\d+(\.\d+){3})"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).lazy.map do |match|
        new_url = "#{url}#{match[0]}/"
        version_page = Homebrew::Livecheck::Strategy.page_content(new_url)

        next if version_page[:content].blank?

        versions = version_page[:content].scan(/(\d+(\.\d+){3})\.dmg/i).map(&:first)
        next if versions.blank?

        versions.max
      end.compact_blank.first
    end
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
