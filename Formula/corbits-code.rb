class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.99"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.99/corbits-0.2.99-macos-arm64.tar.gz"
      sha256 "7604cd07ac32d3cade426e53e5581db68340ca2ae0f6749658c47e578a37e3c4"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.99/corbits-0.2.99-macos-x64.tar.gz"
      sha256 "7d0e4c9ff7bba84e14712ecda429cf5883dfbcd4efae512d3dacfce1f711df0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.99/corbits-0.2.99-linux-arm64.tar.gz"
      sha256 "9acc2f2ddf46c395b7bb7be91db3455cdecd936f860affe0b939a43d02913456"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.99/corbits-0.2.99-linux-x64.tar.gz"
      sha256 "d61f7649eee7497aa72d290fcfbfd9b2189216f370219c7b08eb61f85395a21c"
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
