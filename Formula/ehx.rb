# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ehx"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.3/ehx-macos-aarch64.tar.gz"
      sha256 "369b2dd09924431bac06916b767337c9f20871a032047c8b628932f840101ae6"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.3/ehx-macos-x86_64.tar.gz"
      sha256 "3acf5fb48b709683871dc3665d57f7d0bace9fa21660331f2470d6bd0f4601d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.3/ehx-linux-aarch64.tar.gz"
      sha256 "e0c18511336000a8971a9a5e31dbba86f3f37dccecd449b88279a11322e2b1f6"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.3/ehx-linux-x86_64.tar.gz"
      sha256 "b8d8fdf9471ef3ca37ee31bd12604684f9421d6d71fa306d76e06cafb482ac67"
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
