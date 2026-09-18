class CorbitsCode < Formula
  desc "Single-process coding agent CLI built on the Interchange runtime"
  homepage "https://github.com/corbitsdev/corbits-code"
  version "0.3.29"
  license "GPL-2.0-only"

  on_macos do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.29/corbits-0.3.29-macos-arm64.tar.gz"
      sha256 "2e6707a7a1f7735bd8222cf00161ac700c96c9b09c228d5e578681aae6dc0c1e"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.29/corbits-0.3.29-macos-x64.tar.gz"
      sha256 "a5820acc779d770c1bdde6b74feecd1df60abb9738163cfcefc6b2e216c4a498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.29/corbits-0.3.29-linux-arm64.tar.gz"
      sha256 "a56f4e3d9e51300108d577e4c0ad001f0e4cd2629099cf94d035ee25dbe6b264"
    end
    on_intel do
      url "https://github.com/corbitsdev/corbits-code/releases/download/v0.3.29/corbits-0.3.29-linux-x64.tar.gz"
      sha256 "097c6db57ac86d51bf6971038429244b41474ec8962757b66779d651266f8ad0"
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
