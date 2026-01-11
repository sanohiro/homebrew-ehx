# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/hx"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.2/ehx-macos-aarch64.tar.gz"
      sha256 "09094bc07cbfba4f430ee9dea6df6d238680897122f1281858e5aeca6a441f2f"
    end
    on_intel do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.2/ehx-macos-x86_64.tar.gz"
      sha256 "59d66862d13990a24e99204954494a843f8ddb027584745a321a2dcd24e5eee6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.2/ehx-linux-aarch64.tar.gz"
      sha256 "00c83ae4555cb853d3ee9be3c4a03bdc10b7318ad8e43a96a345cd86254319fe"
    end
    on_intel do
      url "https://github.com/sanohiro/hx/releases/download/v0.1.2/ehx-linux-x86_64.tar.gz"
      sha256 "3d0ed5455e97d88320e7522f5dd49ea108511037b651041ee708d531f2276fc3"
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
