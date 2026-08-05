class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.89"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.89/corbits-0.2.89-macos-arm64.tar.gz"
      sha256 "4297f80cb4241386e8416ebc9e9e7ab8fda595c1edace5697c19929887cf0d23"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.89/corbits-0.2.89-macos-x64.tar.gz"
      sha256 "27f9112d98dc9ea3e67878b1e9d6d4fdbb18f24e039a01cd48000e446fe46b9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.89/corbits-0.2.89-linux-arm64.tar.gz"
      sha256 "17c54337d1b96e54bb21535670b333e64d5245c33791a66fba663590e1eac5d4"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.89/corbits-0.2.89-linux-x64.tar.gz"
      sha256 "b68d2a6d18f4bea4135da70de26962ea19df3c11ba05ce0398859b7db2613863"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
