class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.96"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.96/corbits-0.2.96-macos-arm64.tar.gz"
      sha256 "5bc23a1ba6413241b47dcd708ab253b63985218d08ec22c90a6ea3c11049b8b3"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.96/corbits-0.2.96-macos-x64.tar.gz"
      sha256 "da672751c7be4dfd4917579f6ed52947005dbce01a6b5fec8d144d545ef52a14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.96/corbits-0.2.96-linux-arm64.tar.gz"
      sha256 "1d98a6d6eeec6374e12e4f179081b2351f6f087e1d3993da2df75a81293b38fa"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.96/corbits-0.2.96-linux-x64.tar.gz"
      sha256 "cd5f9ff49d6d86623bc5fb509da54577d4d8c8f6b4a92b44c070c7d6c410c656"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
