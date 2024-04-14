cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.208.0.0"
  sha256 arm:   "c3bca95f9b58b405da11a260297aa1807f8e470df251283494e4b7446e254db6",
         intel: "3c162a7c5ef7fed2767877cd589e4b9233a6aa41104be167fe58798a93736a35"

  url "https://udomain.dl.sourceforge.net/project/cudatext/release/#{version}/cudatext-macos-cocoa-#{arch}-#{version}.dmg.zip",
      verified: "udomain.dl.sourceforge.net/project/cudatext/"
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
