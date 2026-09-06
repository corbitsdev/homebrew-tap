class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.17"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.17/corbits-0.3.17-macos-arm64.tar.gz"
      sha256 "4505619dbe385ca41d6eb77de8fda24ddbee4c1c5bfa89f54b8aa9411a974123"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.17/corbits-0.3.17-macos-x64.tar.gz"
      sha256 "b0258453b9d24c7fa0e5bda20b08024f94c426b4568210bd7b6b22f802f3f4cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.17/corbits-0.3.17-linux-arm64.tar.gz"
      sha256 "8cfee9cdd42fd497d50b4dbb4708d71d0b679f47f75b946868d6c2a8ee292f83"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.17/corbits-0.3.17-linux-x64.tar.gz"
      sha256 "992d27ccf424b1572ad1c5dad53af7b2e03a708cfa8eb1ed90b9760a198015d9"
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
