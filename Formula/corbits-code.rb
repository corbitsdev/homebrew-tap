class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.5"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.5/corbits-0.3.5-macos-arm64.tar.gz"
      sha256 "5e546b41ea39e4bf339ce97cce690398c4a0185883a08b65801cf35ca25374d0"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.5/corbits-0.3.5-macos-x64.tar.gz"
      sha256 "e16490299ff741008c44547637260f8346e17048c6476f1371deabc66f833637"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.5/corbits-0.3.5-linux-arm64.tar.gz"
      sha256 "c4d2d63ffaedebbc91c628605a85647a4c7ff8c0e7f2610d97f4e2ebcb7eb66c"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.5/corbits-0.3.5-linux-x64.tar.gz"
      sha256 "e4068df23b7eb8f8058666420d730e4b26b21be35bb2e455e547557d1e6d9bac"
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
