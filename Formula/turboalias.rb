class Turboalias < Formula
  include Language::Python::Virtualenv

  desc "Fast shell alias management tool"
  homepage "https://github.com/mcdominik/turboalias"
  url "https://files.pythonhosted.org/packages/source/t/turboalias/turboalias-0.0.5.tar.gz"
  sha256 "7e6618a18d0bdd8be77b30a0067c0becb50cef844b342122b90a489e8f1c573f"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/turboalias", "--version"
  end
end