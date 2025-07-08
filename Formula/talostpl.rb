class Talostpl < Formula
  desc "Interactive and non-interactive Talos K8s config generator"
  homepage "https://github.com/vasyakrg/talostpl"
  version "1.1.1"
  url "https://github.com/vasyakrg/talostpl/releases/download/v1.1.1/talostpl-darwin-arm64"
  sha256 "7b99dd974d96beb25479e61dcdea7951a2651f08802900b00bcdfaceb7aed351"

  def install
    bin.install "talostpl-darwin-arm64" => "talostpl"
  end

  test do
    system "#{bin}/talostpl", "--version"
  end
end
