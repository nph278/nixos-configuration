{ ... }:

{
  # RPI Pico udev rules
  services.udev.extraRules = builtins.readFile (builtins.fetchurl {
    url = "https://raw.githubusercontent.com/platformio/platformio-core/cd8024c762bf5bae8caf210b9224548bee55ee04/scripts/99-platformio-udev.rules";
    sha256 = "1232fg93ikhsjdwiz1qp2r0yxbjvkvpvnzic2zs1snawvm8wysq4";
  });
}
