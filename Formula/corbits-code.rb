class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.38"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.38/corbits-0.3.38-macos-arm64.tar.gz"
      sha256 "c26e6cd7017f8221cf83785e54fd6b614c5093eb8792e071ad551c83cf714b5b"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.38/corbits-0.3.38-macos-x64.tar.gz"
      sha256 "9ef7cb18c3d5495ba2a37a7bfbb5493f6ffe7720ec77b717e8835ad058e3185c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.38/corbits-0.3.38-linux-arm64.tar.gz"
      sha256 "1b059bb152b4ff48b7acd9c3626f2b464cfca72aa5203a140c027e3866ca4d5d"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.38/corbits-0.3.38-linux-x64.tar.gz"
      sha256 "a639500f6020c4984ce41c1c33de00ecd2ba75981de5d5175f69f31b7278f5a6"
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
