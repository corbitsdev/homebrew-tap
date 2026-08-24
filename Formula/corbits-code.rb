class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.2.109"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.109/corbits-0.2.109-macos-arm64.tar.gz"
      sha256 "a3fd43e4697d2f6674408f7610eed2b2f77a06e063ebf8f239a6be34dcb3cb68"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.109/corbits-0.2.109-macos-x64.tar.gz"
      sha256 "d6521a6ffc6b8065c4f6ec2e70658d9d05955299ddf44cd14d8875b4cb3a17e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.109/corbits-0.2.109-linux-arm64.tar.gz"
      sha256 "b62b8496b636c32c4488cef79d985f7043317fdaa1d3032ac0ad669cec83dae9"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.2.109/corbits-0.2.109-linux-x64.tar.gz"
      sha256 "542935ce36cde4e4d76ce739cd1d3336165943cd4a63542c488cb345fe8a105a"
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
