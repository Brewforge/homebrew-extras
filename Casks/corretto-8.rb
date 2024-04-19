cask "corretto-8" do
  arch arm: "aarch64", intel: "x64"

  version "8.412.08.1"
  sha256 arm:   "accc8a394375c5c0eb9c1bbcf467b08f0029265e060c8434b0e59cbf79876f63",
         intel: "a8204afa561309101a13f59971f1d2a3f7b5c33967fbd2e9a2630ff9788903ff"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-#{arch}.pkg",
      verified: "corretto.aws/downloads/resources/"
  name "amazon-corretto-8"
  desc "Open-source Version Control System for Machine Learning Projects"
  homepage "https://github.com/corretto/corretto-8"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  pkg "amazon-corretto-#{version}-macosx-#{arch}.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"

  zap trash: []
end
