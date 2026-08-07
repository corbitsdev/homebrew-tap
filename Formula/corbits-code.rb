class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.91"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.91/corbits-0.2.91-macos-arm64.tar.gz"
      sha256 "f2775e6e543014279796ae32dfffd98c2a5fccafd535b0d17e5f8096d5072ee9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.91/corbits-0.2.91-macos-x64.tar.gz"
      sha256 "11b79f292584700d8199a015ae0566406d90e62223c537055e585657024cc9c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.91/corbits-0.2.91-linux-arm64.tar.gz"
      sha256 "3aed3abed903e8a519581529da880f4c856a54ad54233293ee8487f222ee563e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.91/corbits-0.2.91-linux-x64.tar.gz"
      sha256 "80399b63526cc0df744ffe34c55586af8fd24d9de6747ad344beb8479665224c"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
