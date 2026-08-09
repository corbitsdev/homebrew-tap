class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.95"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.95/corbits-0.2.95-macos-arm64.tar.gz"
      sha256 "0dc390573175b5dd6146424c64d43ae9e5807e8c68e3e7d619f4cc0c25001681"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.95/corbits-0.2.95-macos-x64.tar.gz"
      sha256 "86aa016a08bfb1c9ae3c9f213c13f45072127836370e48f6dee0491a8ed98d82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.95/corbits-0.2.95-linux-arm64.tar.gz"
      sha256 "a9a82091d954668b72a61e2c96f43683a87798d07ccd6cee79fc7f6f2dd78519"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.95/corbits-0.2.95-linux-x64.tar.gz"
      sha256 "358ec1ecc7b1ff32eaa7aebe79c11c86c2ad132a67588b73f89915859d9924f7"
    end
  end

  def install
    bin.install "corbits"
  end

  test do
    assert_predicate bin/"corbits", :executable?
  end
end
