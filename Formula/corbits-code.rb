class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.107"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.107/corbits-0.2.107-macos-arm64.tar.gz"
      sha256 "7e2914bff4ffd88a7d0643a6b0c6d4fc84c7b31759ff0f9940c19183b6e585a1"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.107/corbits-0.2.107-macos-x64.tar.gz"
      sha256 "11914a49441b76828a3ad9ffce51d95b7e8b8a43055f3ebd89c71c0b9e01e145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.107/corbits-0.2.107-linux-arm64.tar.gz"
      sha256 "0261fa92afb2b1ccf60cfa5bdb5cd1e6dc7b7624c1470625adc72481d71885b9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.107/corbits-0.2.107-linux-x64.tar.gz"
      sha256 "c5515e19b04190f9d97fa15d76dff4b8403d74b109b024ec9b39dff42a9b2e65"
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
