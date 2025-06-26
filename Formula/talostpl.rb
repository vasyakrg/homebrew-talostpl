class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"

  on_arm do
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.0/talostpl-darwin-arm64"
    sha256 "580d4dd9e7f8e8182f265ea946002c22ed653222ab617e374ba48b1b28d08466"
  end

  on_intel do
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.0/talostpl-darwin-amd64"
    sha256 "9843d546bd541b9bf58e2e1c3c85aa8ff0b2f3705630b84b9123be55a99d5202"
  end

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "talostpl-darwin-#{arch}" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
