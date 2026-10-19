class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.14.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.3/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "567ef7de4085e5c8abb9cd6b779e392de9853f62cbe64fbfedb92bb6598ec213"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.14.3/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "47af72a9eadcbc2e1ba1177eefb1801483f3ae22aa28b0bd440ef1416c3292e2"
  else
    odie "Unexpected platform!"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "talostpl-darwin-amd64" => "talostpl"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "talostpl-darwin-arm64" => "talostpl"
    end
  end
end
