# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ehx"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.4/ehx-macos-aarch64.tar.gz"
      sha256 "51c19ab3740d398c42a92485032fe5688e58c2429049b5ec53c794caade27420"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.4/ehx-macos-x86_64.tar.gz"
      sha256 "c5a3e053833f19464ab272803fafc2d89f73e00e5c89af1d0974306e0aa8cc60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.4/ehx-linux-aarch64.tar.gz"
      sha256 "e7e9ec5b1d4eccf17dd42bb890b9e57d1154dd043ad6ce94c96287a11e60621b"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.4/ehx-linux-x86_64.tar.gz"
      sha256 "a082407e2e14e010132b886abee4e4736c42a743540d29ed03f5d252c7c38c9b"
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
