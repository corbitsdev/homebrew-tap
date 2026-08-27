class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.6"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.6/corbits-0.3.6-macos-arm64.tar.gz"
      sha256 "5d978597d6fa98ffafd4016217cfe44e864b267757a3a3b601e4dea73c372455"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.6/corbits-0.3.6-macos-x64.tar.gz"
      sha256 "4c02a06be2237ce071b4b54d3894ce04638baf282d87522be116da3e22c4ce41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.6/corbits-0.3.6-linux-arm64.tar.gz"
      sha256 "fb3f38bb52eb6b353484bbdab74a912c9647d5a8e6bebaad676c7e4fd67953e6"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.6/corbits-0.3.6-linux-x64.tar.gz"
      sha256 "55d2cc6a34ca3d9c254d2dc75ee87cbcd7ad85ca0be05b9e735e28366c650101"
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
