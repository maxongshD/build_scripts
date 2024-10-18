

# Removals
rm -rf .repo/local_manifests
rm -rf vendor/xiaomi/garnet 
rm -rf vendor/xiaomi/garnet-miuicamera 

# Clone local_manifests repository
git clone https://github.com/maxongshD/android_manifest_xiaomi_garnet.git --depth 1 -b udc .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh

# Exports
export BUILD_USERNAME=Merossi
export BUILD_HOSTNAME=crave

# Set up build environment
source build/envsetup.sh

brunch garnet user 
