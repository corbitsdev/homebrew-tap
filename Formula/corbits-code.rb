class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.97"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.97/corbits-0.2.97-macos-arm64.tar.gz"
      sha256 "58c6ea2adc983a6d449d4fb7a6333089467aa0d6e3a0955aa1b0fa22673a98a2"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.97/corbits-0.2.97-macos-x64.tar.gz"
      sha256 "f0a08c71216a52e41870dda1b46f3a0fc8220564edbef03a5775141e81fc2d4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.97/corbits-0.2.97-linux-arm64.tar.gz"
      sha256 "f8256fb83bf5d3af10384d697ac9597b1b12f89c9ac66861ed87076a9d9345dd"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.97/corbits-0.2.97-linux-x64.tar.gz"
      sha256 "67f7fb7f8b575d3c7000d198b85ec40e366ca48bba1302af1fbd58a2cbd7eca5"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
