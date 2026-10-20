class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.43"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.43/corbits-0.3.43-macos-arm64.tar.gz"
      sha256 "bfbe4d1298026c19f228aa69bff464e61e022f106518825de6106f4ca82eacc1"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.43/corbits-0.3.43-macos-x64.tar.gz"
      sha256 "8b44d4156fffad5fa5dc546d75047e88a16ae0df237dd460b22bbd7449623df5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.43/corbits-0.3.43-linux-arm64.tar.gz"
      sha256 "f152d9fbe338dc5c0ed213b4009a7ef95888aa30f83e05bb3ad67c556a6b2973"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.43/corbits-0.3.43-linux-x64.tar.gz"
      sha256 "10ec5bfcf4992b2a072347a78c2630726f87f26d147bdb56500b7976631c6ebe"
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
