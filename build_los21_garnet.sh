!/bin/bash

# Removals
rm -rf .repo/local_manifests

# Clone local_manifests repository
git clone https://github.com/maxongshD/android_manifest_xiaomi_garnet.git --depth 1 -b udc .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh

# Set up build environment
source build/envsetup.sh

brunch lineage_garnet userdebug 
