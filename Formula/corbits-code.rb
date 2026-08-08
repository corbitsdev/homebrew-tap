class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.93"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.93/corbits-0.2.93-macos-arm64.tar.gz"
      sha256 "ceb0f3df7a2f959ca0a518a2a66abcd39beff58e0ecd8123ca707725a6813070"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.93/corbits-0.2.93-macos-x64.tar.gz"
      sha256 "ee531f3072de50b2a814e0007e1bc540e6fc0d4f0257ffcf1717e15a23baeac5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.93/corbits-0.2.93-linux-arm64.tar.gz"
      sha256 "b43670d95bc608599e4fb1cf5910dc6831cb416a22dd34bd84f017d30e31c514"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.93/corbits-0.2.93-linux-x64.tar.gz"
      sha256 "78ffb01db539ead665672d1f89e8fc07f8573dd6337306d1777bd73cf8cfdbb2"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
