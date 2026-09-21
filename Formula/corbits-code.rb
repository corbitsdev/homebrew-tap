class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.30"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.30/corbits-0.3.30-macos-arm64.tar.gz"
      sha256 "b931a4f4404d705d0619a07582b1b25811f4d1c6e44d7c808707927233142316"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.30/corbits-0.3.30-macos-x64.tar.gz"
      sha256 "73ebb7257b20a9b8237de037d6aefcbc591a7910499f50a2aded2b633c8f9af2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.30/corbits-0.3.30-linux-arm64.tar.gz"
      sha256 "3e4dea6db2ea017d5c61482368d5d3c3b989adba5844f4ad63c573371ffb846b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.30/corbits-0.3.30-linux-x64.tar.gz"
      sha256 "97f875302ad83bfa93db082dd1d5a8d9933e7e161ffc7995915a402a0e657ee9"
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
