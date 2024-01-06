cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.206.5.1"
  sha256 arm:   "e781c3e829156cb298847875b560a5f226bcf3b0bfbbfb74a35a38a9568506cc",
         intel: "52c8ab64c3ef3e4d43dda2443a2af002ec43c64ad83a211917ee105d53f657d6"

  url "https://downloads.sourceforge.net/cudatext/cudatext-macos-cocoa-#{arch}-#{version}.dmg",
      verified: "downloads.sourceforge.net/cudatext/"
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
