class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.13"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.13/corbits-0.3.13-macos-arm64.tar.gz"
      sha256 "0ff4f1c60a97551dd17f1398adee00673acd20924c70edc2034a2f6454c66dc9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.13/corbits-0.3.13-macos-x64.tar.gz"
      sha256 "f28efaabbd56be0ed5606bab44b3838f409eb414f7a16da093df5356a7c00e94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.13/corbits-0.3.13-linux-arm64.tar.gz"
      sha256 "b5aa76511f446c5285e72dd670bc0523d98c6f1ff2c2990d038d024b251596fb"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.13/corbits-0.3.13-linux-x64.tar.gz"
      sha256 "99631f721a964dd3378b9cad5077e4137354811bfb9ffed5f16f7094f2ea1c39"
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
