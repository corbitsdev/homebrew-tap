class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.28"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.28/corbits-0.3.28-macos-arm64.tar.gz"
      sha256 "5b3452eecf5080e8b47dd2ee235ea26e423a98b3eb5b523e7e2203cd2421f9e0"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.28/corbits-0.3.28-macos-x64.tar.gz"
      sha256 "ed669bf40a93928ed77098dba6f0eb83c5d9e74cdea6b40754d3febef9d41808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.28/corbits-0.3.28-linux-arm64.tar.gz"
      sha256 "b0cb6b50c0b89f86d47fa5323aea25863e24eca258e52aa931d6ad247e45efe1"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.28/corbits-0.3.28-linux-x64.tar.gz"
      sha256 "1b3d4d69d2fd3c067fd0f848826dbf3f438eefa7cc2cab165a7d3e4e79958c16"
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
