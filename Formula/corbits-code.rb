class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.33"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.33/corbits-0.3.33-macos-arm64.tar.gz"
      sha256 "1b491b635c8ffc5df0bef25b019d38aa2ebabd452610863f7b7cdf7917e00efc"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.33/corbits-0.3.33-macos-x64.tar.gz"
      sha256 "0c63a8bab234f84c9ef4ce94c3148ace38a4d2f1518ca633092e7ea1258ea07e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.33/corbits-0.3.33-linux-arm64.tar.gz"
      sha256 "53804eebbf035c4345f978b3869d24d58e29c847f4a1fb2a9fa4ba7b0378ae6c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.33/corbits-0.3.33-linux-x64.tar.gz"
      sha256 "d867be6e805f8ceaa4b40b1c57cbc1a87612c883d0879d73e8738dc5c980408b"
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
