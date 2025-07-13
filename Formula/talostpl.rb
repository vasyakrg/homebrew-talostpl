class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.4"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.4/talostpl-darwin-amd64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "c3d35366054ca84895a9c9c34d158bd2fb102b37de7d675a0a7268402c14a433"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.4/talostpl-darwin-arm64",
      verified: "github.com/vasyakrg/talostpl/"
    sha256 "5efe84f4cde535a6b4c695b0ac75ee72abda9a43ad95266c2286a7d134e2c868"
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
