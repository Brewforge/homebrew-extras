class Alist < Formula
  desc "File list program that supports multiple storage"
  homepage "https://alist.nn.ci/"
  url "https://github.com/AlistGo/alist/archive/refs/tags/v3.38.0.tar.gz"
  sha256 "bc8983900786afdc2ac3d4a60d5e71a1e5db0c2c63f00190c728974ee266ce12"
  license "AGPL-3.0-only"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/alist-org/alist/releases/download/v3.37.4/alist-darwin-arm64.tar.gz"
    sha256 "6ae7819c77f44f4c507db92904634e9caef7c9f6b807e9bfe0e059b0300f3434"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/alist-org/alist/releases/download/v3.37.4/alist-darwin-amd64.tar.gz"
    sha256 "39d43c1f3c70510075e9e9e3e159a647d25bd35461b1c5582a6d3ef88cb51a5f"
  elsif !OS.mac? && Hardware::CPU.arm?
    url "https://github.com/alist-org/alist/releases/download/v3.37.4/alist-linux-arm64.tar.gz"
    sha256 "1cb865edb99452dfd0fad35c4c4dbee45f9756259c2efda837fa5fdf7d7782f0"
  elsif !OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/alist-org/alist/releases/download/v3.37.4/alist-linux-amd64.tar.gz"
    sha256 "24c034739f241783d844c1b14f4655e1b88d1cca5009c0df7f9de5c366522b4a"
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "alist"
  end

  test do
    system bin/"alist", "admin"
  end
end
