class Carapace < Formula
  desc "Multi-shell multi-command argument completer"
  homepage "https://github.com/carapace-sh/carapace-bin"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/carapace-sh/carapace-bin/releases/download/v1.0.5/carapace-bin_darwin_arm64.tar.gz"
    sha256 "b4092699457d92d66026c7f7bb72302cd45ace0dd00bbf49826a2b6bcb24b27c"
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
