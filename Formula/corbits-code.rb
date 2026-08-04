class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.88"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.88/corbits-0.2.88-macos-arm64.tar.gz"
      sha256 "64a2447d03ec987f7847293973fcb14a3239da2bd23f34039f5b45024ed9f8a4"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.88/corbits-0.2.88-macos-x64.tar.gz"
      sha256 "a619245bc6d9a0b732f85fd126c5e2e8f6be5adfae3c9457535f45e40fff9708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.88/corbits-0.2.88-linux-arm64.tar.gz"
      sha256 "57f837e388bfa8d65aae31e9557b77c7e5523cd2218bc2b21dcf442235ed5b4d"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.88/corbits-0.2.88-linux-x64.tar.gz"
      sha256 "a062c937499b99547df2618728d25006f20d091b02b856813d7af90651e10cb2"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
