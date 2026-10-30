class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.48"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.48/corbits-0.3.48-macos-arm64.tar.gz"
      sha256 "10f868ef7c51ebe3d1f7af2a431f19e6752727f912a18f3f37150f7527204436"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.48/corbits-0.3.48-macos-x64.tar.gz"
      sha256 "716e675156db7246f8b002418955641babf58b71a9aadee7c008c59d2f5ea985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.48/corbits-0.3.48-linux-arm64.tar.gz"
      sha256 "fb8184b3de26a78c9d47b1c064944c80dc703fca18eb861d47828c020e4e8edd"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.48/corbits-0.3.48-linux-x64.tar.gz"
      sha256 "cdef04033400cb743f2caa11e44d1649def652d78bb937468dcef5809c384d54"
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
