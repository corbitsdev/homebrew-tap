class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.20"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.20/corbits-0.3.20-macos-arm64.tar.gz"
      sha256 "932a3a551e69e90a7f4e8d1c41608696afe1b4c63bbe00258885839497295ee7"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.20/corbits-0.3.20-macos-x64.tar.gz"
      sha256 "4d69495e8773261c015b6734bdb588ea62c7f4a55d8e7b43aca1877d50f84e97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.20/corbits-0.3.20-linux-arm64.tar.gz"
      sha256 "0a989580a7491eb0c660e289b0d9133393b812852e0bead14b666fec736e6411"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.20/corbits-0.3.20-linux-x64.tar.gz"
      sha256 "8b8ee67b6930b98268c88dc0cc1a7e0f659dea983a6315a6890b5293948d9089"
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
