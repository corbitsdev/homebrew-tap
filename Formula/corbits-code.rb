class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.105"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.105/corbits-0.2.105-macos-arm64.tar.gz"
      sha256 "3ba9eeecfc43d70d0c16d42a24a3a8d5609fca42bc4dda90299ac1e0bcc9bc8f"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.105/corbits-0.2.105-macos-x64.tar.gz"
      sha256 "3c55698243af0558a935933375d9254ee285fae4aff68d916ef27fe488819840"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.105/corbits-0.2.105-linux-arm64.tar.gz"
      sha256 "f057c438ceea50f210b1a6bfc21161d7a2811b6855668eb7139b3a1d4b3791f7"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.105/corbits-0.2.105-linux-x64.tar.gz"
      sha256 "044f451f0c8b3ccc5eb855c249f4710d10b41060707ce4163a59f8f2eee7c8cd"
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
