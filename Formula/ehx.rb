# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ehx"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.5/ehx-macos-aarch64.tar.gz"
      sha256 "3a1122d14c24fd6f3b79595976103f57b4d08a0d5630f20fe623ba0b6ad218dc"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.5/ehx-macos-x86_64.tar.gz"
      sha256 "7954ba90b24b0e0e8982e7208bf1f9057755b04b021203b844f8037c5e7187ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.5/ehx-linux-aarch64.tar.gz"
      sha256 "159b515fb69192d8d3913a82da5d343d2db93f5206875eb2a751e139377517c4"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.5/ehx-linux-x86_64.tar.gz"
      sha256 "39fc7d7b154711f77cc95b96521218ec8051238ef5b2a4f30c81d2966a685dce"
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
