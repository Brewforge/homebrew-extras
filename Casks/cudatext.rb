cask "cudatext" do
  arch arm: "aarch64", intel: "amd64"

  version "1.214.0.0"
  sha256 arm:   "0d4d90b4a8cfb07070f2105bdadedc998bd4437528760716e07a7d904c84cc12",
         intel: "a0699470f9a796a2a7e2619585b9c58ccd4527b1f7b9483d67b30abedd81cb66"

  url "https://sourceforge.net/projects/cudatext/files/release/#{version}/cudatext-macos-cocoa-#{arch}-#{version}.dmg",
      verified: "downloads.sourceforge.net/projects/cudatext/"
  name "CudaText"
  desc "Text editor"
  homepage "https://cudatext.github.io/index.html"

  livecheck do
    # url "https://sourceforge.net/projects/cudatext/files/release/"
    # regex(/title="(\d+(\.\d+){3})"/i)
    # strategy :page_match do |page, regex|
    #   page.scan(regex).lazy.map do |match|
    #     new_url = "#{url}#{match[0]}/"
    #     version_page = Homebrew::Livecheck::Strategy.page_content(new_url)

    #     next if version_page[:content].blank?

    #     versions = version_page[:content].scan(/(\d+(\.\d+){3})\.dmg/i).map(&:first)
    #     next if versions.blank?

    #     versions.max
    #   end.compact_blank.first
    # end
    skip "skip for now"
  end

  app "CudaText.app"

  zap trash: [
    "~/Library/Application Support/CudaText",
    "~/Library/Saved Application State/com.uvviewsoft.cudatext.savedState",
  ]
end
