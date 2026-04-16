#!/bin/sh
BOARD_DIR="$(dirname $0)"

cp $BOARD_DIR/uEnv.txt $BINARIES_DIR/uEnv.txt

install -m 0644 -D $BOARD_DIR/extlinux.conf $BINARIES_DIR/extlinux/extlinux.conf

# NM keyfiles must be root-owned and mode 600
chmod 600 $TARGET_DIR/etc/NetworkManager/system-connections/*.nmconnection 2>/dev/null || true

# SSH authorized_keys must be mode 600
chmod 600 $TARGET_DIR/root/.ssh/authorized_keys 2>/dev/null || true
