class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.92"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.92/corbits-0.2.92-macos-arm64.tar.gz"
      sha256 "a8be217b0fc362b5e3868082ce5d5a8fe019968422eac24a9103aff7568f6e49"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.92/corbits-0.2.92-macos-x64.tar.gz"
      sha256 "9dab8eac252e7d5c7428c155ac283f17180a0e0d5fec1029fdee131b3de4106a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.92/corbits-0.2.92-linux-arm64.tar.gz"
      sha256 "16190b4df17f5fde38c02f8cc6dc9ee55cc502c57783e20c2721ef8a59a28a54"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.92/corbits-0.2.92-linux-x64.tar.gz"
      sha256 "091a2613c596a49d54664fa93a92b5c1db508f29de82a278aaba74908a64b073"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
