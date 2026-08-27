class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.7"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.7/corbits-0.3.7-macos-arm64.tar.gz"
      sha256 "db05d2ce64dc8ecec436b171724d459f58870a3e1956a65f2fa064abc92f47f8"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.7/corbits-0.3.7-macos-x64.tar.gz"
      sha256 "ab087a68df518c825bcb7b3f490975b14043986a859cbd289e802e5837e9f7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.7/corbits-0.3.7-linux-arm64.tar.gz"
      sha256 "796f86c7422498498a210fdf7da3bd39d447d4991e1fd0033c6d018f849f5d79"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.7/corbits-0.3.7-linux-x64.tar.gz"
      sha256 "80f461eb903bf3d60d498565f785df661d09cbe0b2ccf30eeaabeaef756b3c8e"
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
