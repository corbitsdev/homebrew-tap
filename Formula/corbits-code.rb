class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.101"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.101/corbits-0.2.101-macos-arm64.tar.gz"
      sha256 "9e0669809fffbccd1ca7935da2ab8d1200ed3ec45446061df629256ad9b0538f"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.101/corbits-0.2.101-macos-x64.tar.gz"
      sha256 "3c93b61fb678648a9f73ef934756d43f6cc503823bcffe3f819d90b4564a1c32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.101/corbits-0.2.101-linux-arm64.tar.gz"
      sha256 "b9e5d6f82cef23e97d1fa49507d6256496d9c39debc15584f4f20360b145bdad"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.101/corbits-0.2.101-linux-x64.tar.gz"
      sha256 "6054b4153699e4511d2ac5bee98c019523154e4efa541bbf595fa7568cd3aa7d"
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
