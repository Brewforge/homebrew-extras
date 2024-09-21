class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://github.com/carapace-sh/carapace-bin"

  version "1.0.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.6/carapace-bin_darwin_arm64.tar.gz"
    sha256 "592b6d9baa9d03b60b6e942434d9b10ad2ef99b1ce526921daddd11f5a1c21f8"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.5/carapace-bin_darwin_amd64.tar.gz"
    sha256 "155683a4b73c2ef8edea701f21fe4a459e9cc009ca9c9115b7bcb3aa002d3f73"
  elsif !OS.mac? && Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.5/carapace-bin_linux_arm64.tar.gz"
    sha256 "62991654a921f2282a83c13ca8c31b5a7df712d401c375f264df6235b4b50efa"
  elsif !OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.5/carapace-bin_linux_amd64.tar.gz"
    sha256 "a7441f518a40ffc86d107059699a72c7cc652a03cbc9351f9643247ac25d7b07"
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "carapace"
  end
end
