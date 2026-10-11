class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.37"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.37/corbits-0.3.37-macos-arm64.tar.gz"
      sha256 "104214f6ba0520429c3779e866e3d6d2f08d1c1d21cedd539e161f2cffdef176"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.37/corbits-0.3.37-macos-x64.tar.gz"
      sha256 "d033846e70670ac3f518e58880914a852fde255e538fcdf341fc27821996dd2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.37/corbits-0.3.37-linux-arm64.tar.gz"
      sha256 "34b6c8e924ce3bba88b2869b6593a46977bd244ae7e0743b36623f04d27f4ddb"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.37/corbits-0.3.37-linux-x64.tar.gz"
      sha256 "003aada49be2496f172b19aba9e16233e7d3de09ad1e1600252ff07c547206d6"
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
