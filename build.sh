echo "building main project"
pnpm install
pnpm run build

cd steamworks
echo "building steamworks"
pnpm install
pnpm run build:debug

cd ..

echo "linking"
pnpm link

echo "building finished."

echo "ensuring making dist/dist/linux64"
mkdir -p dist/dist/linux64
echo "doing cp ./steamworks/dist/linux64/steamworksjs.linux-x64-gnu.node dist/dist/linux64/"
cp ./steamworks/dist/linux64/steamworksjs.linux-x64-gnu.node dist/dist/linux64/
echo "doing cp ./steamworks/dist/linux64/libsteam_api.so dist/dist/linux64/"
cp ./steamworks/dist/linux64/libsteam_api.so dist/dist/linux64/

echo "done."
