class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.14"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.14/corbits-0.3.14-macos-arm64.tar.gz"
      sha256 "19c8650f54d77df2db814dd911193bfcb837d5f6a3c87ec12375bcbacdc36513"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.14/corbits-0.3.14-macos-x64.tar.gz"
      sha256 "fb6660cc6b82b1cd7f54e68181277cfd41b80456200a63bd7f0218ce9b3df7b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.14/corbits-0.3.14-linux-arm64.tar.gz"
      sha256 "4aa43aecf4ad1b7305ae40ae58e3f09ad9a52fcd6d1789ccf5fbde6e46fdac5e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.14/corbits-0.3.14-linux-x64.tar.gz"
      sha256 "d683aa75ab73402c78e4392fe02bd03dea153effd8bee3f3ae18a79b47aac439"
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
