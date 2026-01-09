class Gns < Formula
  desc "GNS CLI - Global Name Space client"
  homepage "https://github.com/ChessCom/gns-client-go"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChessCom/gns-client-go/releases/download/v2.0.0/gns_darwin_arm64.tar.gz"
      sha256 "bdbd06046fcebab28dea0f1c0d90f250aaa11318c903c3f80c181980ecdda2f0"
    end
    on_intel do
      url "https://github.com/ChessCom/gns-client-go/releases/download/v2.0.0/gns_darwin_amd64.tar.gz"
      sha256 "0f2bc7f12dc6c211169e798df54b907e0feeb9b4c10c84f6b0743195e50098cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChessCom/gns-client-go/releases/download/v2.0.0/gns_linux_arm64.tar.gz"
      sha256 "159be98bcb435dc2b88c39d37a917c2a048dca1b3248140cd81dbccb440d1845"
    end
    on_intel do
      url "https://github.com/ChessCom/gns-client-go/releases/download/v2.0.0/gns_linux_amd64.tar.gz"
      sha256 "da3d8eea06adb9521f52be728a263d28d05cdda7f997ef7217f659fc29e6b018"
    end
  end

  def install
    bin.install "gns"
    generate_completions_from_executable(bin/"gns", "completion")
  end

  test do
    system "#{bin}/gns", "version"
  end
end
