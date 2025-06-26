class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.1"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.0.1/talostpl-darwin-amd64"
  sha256 "580d4dd9e7f8e8182f265ea946002c22ed653222ab617e374ba48b1b28d08466"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
