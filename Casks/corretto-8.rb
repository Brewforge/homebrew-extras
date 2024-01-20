cask "corretto-8" do
  arch arm: "aarch64", intel: "x64"

  version "8.402.08.1"
  sha256 arm:   "8fa923be1c52a9bec98ece6c5a3c9cb8b2c2cab618cff852edc27939c0efafc1",
         intel: "bd1a37740cb9b7592872f629043404cbc589be72c8c8e55c5e6c7087cfced9a4"

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
