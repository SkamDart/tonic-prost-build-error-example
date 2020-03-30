fn main() {
    tonic_build::configure()
        .compile(&["protos/hello.proto",
                   "protos/goodbye.proto",
                   "types.proto"],
                 &["protos/",
                   env!("PROTOC_INCLUDE")
                 ])
        .unwrap();
}
