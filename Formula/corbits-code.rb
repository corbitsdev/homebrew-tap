class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.41"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.41/corbits-0.3.41-macos-arm64.tar.gz"
      sha256 "3b10928df0cf8b198fe1e4927d72d3800d9daa2cddab5d3cdb2d2a76e3e681ee"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.41/corbits-0.3.41-macos-x64.tar.gz"
      sha256 "2dd512e62b8275896e37d594438d28a06c7e29815f7983aaaad12d88801b2c63"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.41/corbits-0.3.41-linux-arm64.tar.gz"
      sha256 "4fa8116504231c9d1b117e347dac501af2a1ed9ebce6fb5dddae7c299b4e74ac"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.41/corbits-0.3.41-linux-x64.tar.gz"
      sha256 "aa8ed5a9e185c10b3ee978aefe63549a6a778243c5070a6ed61571e0f39bd8f5"
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
