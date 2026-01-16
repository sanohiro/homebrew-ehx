# typed: false
# frozen_string_literal: true

class Ehx < Formula
  desc "Terminal hex editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ehx"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.6/ehx-macos-aarch64.tar.gz"
      sha256 "0852d2a05a76ee94890c6fc1db2474cddbe33b9fdc365a1175ed0020d81ede81"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.6/ehx-macos-x86_64.tar.gz"
      sha256 "4154f7743b55e7437a14cc806c6c7391c9be765ded45782936f9c777bad18c01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.6/ehx-linux-aarch64.tar.gz"
      sha256 "d53408e9d4ff0eaec7abc5c4719a9b8269d0078a888cea4eb2e5a27be8b90c90"
    end
    on_intel do
      url "https://github.com/sanohiro/ehx/releases/download/v0.1.6/ehx-linux-x86_64.tar.gz"
      sha256 "32bde368a8bb025276651836302f142ee48710b090773c85d1d210ff30883999"
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
