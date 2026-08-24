class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.108"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.108/corbits-0.2.108-macos-arm64.tar.gz"
      sha256 "ad595f7e5538be8d80e07b1e0cf69b0f5cf800593ef5f479444be24dc8454f10"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.108/corbits-0.2.108-macos-x64.tar.gz"
      sha256 "be61d546a5fb4b631b094fb6d9fea6b22ce5199714eb6adb9ad67e2b4e574834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.108/corbits-0.2.108-linux-arm64.tar.gz"
      sha256 "bf48eefcb0dc489a8e63418ccb422b96510a31f6f680e8e6020efd48e969fe48"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.108/corbits-0.2.108-linux-x64.tar.gz"
      sha256 "db1126b41e36615f24834c7b4544820576dc05c7d91961c2cde4a49671ca6225"
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
