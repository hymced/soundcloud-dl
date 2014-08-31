#!/bin/bash

TEST_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCDL_DIR=$(cd $TEST_DIR && cd .. && pwd)
TMP_DIR=

exists() {
    [[ -f $1 ]]
}

create_workspace() {
    TMP_DIR=$(mktemp --directory)
    cp $SCDL_DIR/scdl "$TMP_DIR"
    exists "$TMP_DIR"/scdl || \
        { echo "[ERROR] unable to set up workspace."; exit 1; }
}

clear_workspace() {
    rm -rf "$TMP_DIR"
}

dl_single_sound() {
    echo "[INFO] Downloading single sound."

    local SOUND="https://soundcloud.com/four-tet/burial-four-tet-nova"
    local TITLE="Burial + Four Tet - Nova.mp3"
    cd $TMP_DIR && $TMP_DIR/scdl $SOUND > /dev/null
    exists "$TMP_DIR/$TITLE" || \
        { echo "[ERROR] Unable to download sound."; exit 1; }

    echo "[PASS] Succesfully downloaded single sound!"
}



main() {
    create_workspace

    dl_single_sound

    clear_workspace
}

main
