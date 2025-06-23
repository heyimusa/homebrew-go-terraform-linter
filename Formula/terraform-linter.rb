class TerraformLinter < Formula
  desc "A security-focused Terraform linter"
  homepage "https://github.com/heyimusa/go-terraform-linter"
  url "https://github.com/heyimusa/go-terraform-linter/releases/download/v1.0.0/terraform-linter-darwin-amd64"
  version "1.0.0"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"

  def install
    bin.install "terraform-linter-darwin-amd64" => "terraform-linter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terraform-linter --version")
  end
end
