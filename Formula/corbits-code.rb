class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.94"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.94/corbits-0.2.94-macos-arm64.tar.gz"
      sha256 "cd255c24e520427628ec0ad4994adb1bf1d6fd984f23b887f499c02be0bd8c59"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.94/corbits-0.2.94-macos-x64.tar.gz"
      sha256 "05b96887756bb333da7209ba4d1704de464f1781d3074f6b53af3fe648598474"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.94/corbits-0.2.94-linux-arm64.tar.gz"
      sha256 "5cf83f92fcb099b8132fcfd20a9dd1cfe404d6bd86d6b362a9082411335d4885"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.94/corbits-0.2.94-linux-x64.tar.gz"
      sha256 "a4d96b38fd4e181e2214d6aea560bdd53084f6f1446e0383d968e024b4b6f391"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
