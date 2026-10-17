class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.40"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.40/corbits-0.3.40-macos-arm64.tar.gz"
      sha256 "ee2684e673166ef83f595cb6d60ac020f75522ea58d5537647b8c79d9eba2228"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.40/corbits-0.3.40-macos-x64.tar.gz"
      sha256 "6e1dddb20f88854aa3734da5cd6db637e16afc21abf5ae6b24172ac22b4e8481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.40/corbits-0.3.40-linux-arm64.tar.gz"
      sha256 "08d5622cccd7491b110d91ed18c09eb5090558139df0ce8aec34a28a79132d34"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.40/corbits-0.3.40-linux-x64.tar.gz"
      sha256 "43dda2ac8b4f66587aff188e3a319c3440bf82b57eadc978386728d08fe8158d"
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
