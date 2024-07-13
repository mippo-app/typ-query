use std::path::PathBuf;

use helper::fs::get_files;

fn main() {
    {
        let protos = get_files("../../proto/typ_query/", &"proto".into());

        tonic_build::configure()
            .build_client(true)
            .build_server(true)
            .extern_path(".typ_p", "typ-p::pb::typ_p")
            .out_dir("./src/pb/")
            .compile(
                &protos,
                &[
                    PathBuf::from("../../proto/"),
                    PathBuf::from("../../../typ-p/proto/"),
                ],
            )
            .unwrap();
    }
}
