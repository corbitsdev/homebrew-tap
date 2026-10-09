class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.36"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.36/corbits-0.3.36-macos-arm64.tar.gz"
      sha256 "ba05514a65da70a6675063f045055f29ea502d4601f6f27aef88053ddebb2b5a"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.36/corbits-0.3.36-macos-x64.tar.gz"
      sha256 "cf1d22e4d67764bf84af715c6f6c0e1795bce9bb9755aa0b969bb72a81fb49a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.36/corbits-0.3.36-linux-arm64.tar.gz"
      sha256 "bab494746b71e81d5a2b0a1f186dbf5659eeb0ba609390a3c964f6969048a3c0"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.36/corbits-0.3.36-linux-x64.tar.gz"
      sha256 "b29956442c1d4871888d9b108428efd6f242ea6cb11ed3a995f7e46097e2ee07"
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
