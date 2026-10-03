class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.34"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.34/corbits-0.3.34-macos-arm64.tar.gz"
      sha256 "bfa28b8860976f67a365ac442138d654b39fc9d8abdbc801d2af77413ffb37ef"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.34/corbits-0.3.34-macos-x64.tar.gz"
      sha256 "15e1efe352b6d48908ae958474956877bae88870d4543dbe41b0415ec42b66c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.34/corbits-0.3.34-linux-arm64.tar.gz"
      sha256 "4b32220b0bc43c1173ce0b31e22bd07ca876850b839f4fad278a29dc240744e4"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.34/corbits-0.3.34-linux-x64.tar.gz"
      sha256 "93c818f1bdfe2cb98a93ae3c5698f44daa475686945ec1313e99e7cfb28ed147"
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
