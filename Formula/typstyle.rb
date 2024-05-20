class Typstyle < Formula
  desc "Format your typst source code"
  homepage "https://github.com/Enter-tainer/typstyle"
  version "0.11.22"
  license "Apache-2.0"

  arch = Hardware::CPU.arm? ? "arm64" : "x64"

  if OS.mac?
    url "https://github.com/Enter-tainer/typstyle/releases/download/v#{version}/typstyle-darwin-#{arch}"
    if Hardware::CPU.arm?
      sha256 "16bec0a0b8d959950a967a750266054ad3545e451503a1de762f5f16325d09eb"
    else
      sha256 "d166b155b80635b45b617c80dcf5984a169955bafdfb0cb03d7ae361f6705e6b"
    end
  end

  livecheck do
    url :homepage
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "x64"
    bin.install "typstyle-darwin-#{arch}"
  end
end
