class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.4"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.4/corbits-0.3.4-macos-arm64.tar.gz"
      sha256 "d8a7ebf1adbf25d6921bf85b2b7df42510aa592aa5de04dc410416188b5f3232"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.4/corbits-0.3.4-macos-x64.tar.gz"
      sha256 "11b11ec4545d9f9c9979ccacddd40d46b7b216fd264418b2858dae4bc04e1742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.4/corbits-0.3.4-linux-arm64.tar.gz"
      sha256 "ec8f3440729f2f25dc1184061dfbd797c3797323eb5833e773fc541ff62b79ca"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.4/corbits-0.3.4-linux-x64.tar.gz"
      sha256 "230704c7b682aeb149c718ece35bfe5479d4472ddaff7f39e8129b7e0739c282"
    end
  end

  def install
    bin.install "corbits"
    if File.directory?("plugins")
      (bin/"plugins").mkpath
      cp_r "plugins/.", bin/"plugins"
    end
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
