class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.90"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.90/corbits-0.2.90-macos-arm64.tar.gz"
      sha256 "94a744225a3e8fac0dc6138fc3911bf2aa29820d43f948d9ed227227d879b962"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.90/corbits-0.2.90-macos-x64.tar.gz"
      sha256 "f08a32b0fe7e8ba6d58164ed61cb3a1e4e7d831f9b821bce2265bcfa0b876ff6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.90/corbits-0.2.90-linux-arm64.tar.gz"
      sha256 "a92e27361c92922e7e1c29ea30793a5fe34f893dfb2090fa2da1404a68e3e18c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.90/corbits-0.2.90-linux-x64.tar.gz"
      sha256 "3d2c2dc55efa4a9819c042cc88dd515cfd98f8c11e5cc9efb8d3b332742bdacb"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
