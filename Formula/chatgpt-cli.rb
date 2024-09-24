class ChatgptCli < Formula
  desc "Simple cli wrapper for ChatGPT API, powered by GPT-3.5-turbo model"
  homepage "https://github.com/j178/chatgpt"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/j178/chatgpt/releases/download/v1.3.5/chatgpt_Darwin_arm64.tar.gz"
    sha256 "95901ded3112356a0b9485ba96c0286d5a55c89a646f3306611cabed42a72799"
  elsif OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/j178/chatgpt/releases/download/v1.3.5/chatgpt_Darwin_x86_64.tar.gz"
    sha256 "fc84ed339b19a609846bdf228a4c28bd8cefcb5765b984b720ac5ec33855b4e9"
  elsif !OS.mac? && Hardware::CPU.arm?
    url "https://github.com/j178/chatgpt/releases/download/v1.3.5/chatgpt_Linux_arm64.tar.gz"
    sha256 "afe8958d24ebaf06e2dcc7c487fd08f2f236868de8aea1bf39f8c5eeb8a8c38f"
  elsif !OS.mac? && !Hardware::CPU.arm?
    url "https://github.com/j178/chatgpt/releases/download/v1.3.5/chatgpt_Linux_x86_64.tar.gz"
    sha256 "9300540a1ed4bcbf2e6df5ff09cc6c046c4e87e6d78d9d8eb41186aeba792282"
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "chatgpt"
  end

  test do
    system "bin/chatgpt", "--version"
  end
end
