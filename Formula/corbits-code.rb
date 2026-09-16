class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.27"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.27/corbits-0.3.27-macos-arm64.tar.gz"
      sha256 "5ed8e0823922a27f076cc2bf85062f76d5b4eef0170ff48daf5f111e1391fb54"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.27/corbits-0.3.27-macos-x64.tar.gz"
      sha256 "2f1801fd1f469267c6ade718576541285d7b00af42bc10c26d464fa074ea210b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.27/corbits-0.3.27-linux-arm64.tar.gz"
      sha256 "4312b121326e512b6525bb0e9e9b27f09476f9297dc1bf07431927bae5fbe20b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.27/corbits-0.3.27-linux-x64.tar.gz"
      sha256 "4895d984c9f8110bd04c21f74fba3b656bd3bb99dd69f67337ef492d653d1923"
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
