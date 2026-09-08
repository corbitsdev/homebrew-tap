class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.18"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.18/corbits-0.3.18-macos-arm64.tar.gz"
      sha256 "04915f330b5d2c954455a87f9ca5aa29d1d81249d8fd6f9d63c47b932e691fed"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.18/corbits-0.3.18-macos-x64.tar.gz"
      sha256 "5b30b160dd9bd3b3de124bfa29a983834eaa2ac2f2a530d1637b7b4566923780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.18/corbits-0.3.18-linux-arm64.tar.gz"
      sha256 "ab7ba22a57dba97c83dc88dc628dba7ee296ab36309d6c2122be6e732d2a2d1e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.18/corbits-0.3.18-linux-x64.tar.gz"
      sha256 "6633bde8ad9381e4a065b6eeb295848c16cea6b977f30ca1ebfb0a94e0074c49"
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
