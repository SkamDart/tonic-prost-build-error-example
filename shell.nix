with import <nixpkgs> {};

let
  crust = (rustChannels.stable.rust.override { extensions = [ "rust-src" ]; });
in
stdenv.mkDerivation {
  name = "andurilapis-rs";
  buildInputs = [ crust rustracer protobuf ];
  RUST_SRC_PATH = "${crust}/lib/rustlib/src/rust/src";
  PROTOC = "${protobuf}/bin/protoc";
  PROTOC_INCLUDE = "${protobuf}/include";
}
