class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.10"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.10/corbits-0.3.10-macos-arm64.tar.gz"
      sha256 "5f6801bb41db16ba1b6b4ba3a0d483aa1b533720c21398ef3a7ccffa90e89aee"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.10/corbits-0.3.10-macos-x64.tar.gz"
      sha256 "06cd234d767d7fd54f6bb0ccf063e31374fb0af3c070634e532946a02c37e982"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.10/corbits-0.3.10-linux-arm64.tar.gz"
      sha256 "f8e6a09dd73ecc1c5dcf8580422ff6cc3a8eccc598d9a29023fed76afa311391"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.10/corbits-0.3.10-linux-x64.tar.gz"
      sha256 "22c619136d3bfac2dc2a3cbf68ff4ba6fdd889a8b91a11d985db81ab4e0bff1c"
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
