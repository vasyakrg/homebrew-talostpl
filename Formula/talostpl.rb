class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.0.0"

  def install
    if Hardware::CPU.arm?
      url = "https://github.com/vasyakrg/talostpl/releases/download/v1.0.0/talostpl-darwin-arm64"
      sha256 = "580d4dd9e7f8e8182f265ea946002c22ed653222ab617e374ba48b1b28d08466"
      bin_name = "talostpl-darwin-arm64"
    else
      url = "https://github.com/vasyakrg/talostpl/releases/download/v1.0.0/talostpl-darwin-amd64"
      sha256 = "9843d546bd541b9bf58e2e1c3c85aa8ff0b2f3705630b84b9123be55a99d5202"
      bin_name = "talostpl-darwin-amd64"
    end
    system "curl", "-L", "-o", bin_name, url
    odie "SHA256 mismatch" unless Digest::SHA256.file(bin_name).hexdigest == sha256
    bin.install bin_name => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
