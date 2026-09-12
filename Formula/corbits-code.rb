class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.23"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.23/corbits-0.3.23-macos-arm64.tar.gz"
      sha256 "14f2e325c08d8ac3f40eadd44c80e416fe4cd9d575f015a6698ac7f2a1e144b8"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.23/corbits-0.3.23-macos-x64.tar.gz"
      sha256 "831b448e8bc8c406f6912f8189761c7c5f5f41f93c6696f2fa923eaed9a316ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.23/corbits-0.3.23-linux-arm64.tar.gz"
      sha256 "252da7fa6fde6eed32434c781976fdf7df70fed8d6ff3e46a70b862d1808a87a"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.23/corbits-0.3.23-linux-x64.tar.gz"
      sha256 "e6d1f79e0ca305e5d7b2977fcb612f24985ea5636585708f9c98e9829977d6af"
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
