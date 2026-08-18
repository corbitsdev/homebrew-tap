class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.98"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.98/corbits-0.2.98-macos-arm64.tar.gz"
      sha256 "46109d7dbcde6179bc4f9bfca2514665a264272e290ad518c0a7e0a1c82719bf"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.98/corbits-0.2.98-macos-x64.tar.gz"
      sha256 "6f1fd822540b2676e7d277d3a1eb30b05a45e938d0d4519d8057892b007ffac9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.98/corbits-0.2.98-linux-arm64.tar.gz"
      sha256 "e7da674a1c2bcae79812ea2ae51c7af5c1bc0c2d3db7d0b8d621c29445436b72"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.98/corbits-0.2.98-linux-x64.tar.gz"
      sha256 "442f0d67238f2c2919d1c5b526de863a6f6765cdd931fbeb8e88514749413352"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
