# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ehx"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.2/ehx-macos-aarch64.tar.gz"
      sha256 "29e92973ab80ccc9bc315ae64d573d4e224f990062798d0ac04b87f806766504"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.2/ehx-macos-x86_64.tar.gz"
      sha256 "5b2e0b6808e88c96b052ca18a9c49daa49c68f3a9090ea43693b304da1b1bb8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.2/ehx-linux-aarch64.tar.gz"
      sha256 "7d9f50ba5285f732159564a784e465b17720fd127c7119603a3e0175aa36bd1b"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.2/ehx-linux-x86_64.tar.gz"
      sha256 "54e1fb7af5e1bdfb251adde6882d727fdbbe0be9497763775023e8f4a5948ddb"
    end
  end

  def install
    bin.install "ehx"
    bin.install "bx"
  end

  test do
    assert_match "ehx", shell_output("#{bin}/ehx --version")
  end
end
