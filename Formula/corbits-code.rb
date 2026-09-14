class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.25"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.25/corbits-0.3.25-macos-arm64.tar.gz"
      sha256 "af2beb38ef05e7876042c31d44fbe29960b0ae32ddfae901d373262c351d1d3a"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.25/corbits-0.3.25-macos-x64.tar.gz"
      sha256 "2105e74c83567ff8550069131fdedcbc647f0b146c8a5f4d94e4298094c9965d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.25/corbits-0.3.25-linux-arm64.tar.gz"
      sha256 "1664c89873bc736dbb6e8d77d02356191371485da8413f61599cb16799323832"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.25/corbits-0.3.25-linux-x64.tar.gz"
      sha256 "3327a48214b213ec87f263a6b1e5af13685699706f314b3d4c6ecec29ba3c30f"
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
