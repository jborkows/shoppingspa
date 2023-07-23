
set -e

pnpm install
# npx lerna bootstrap

# npx firebase --project=fakeproject emulators:exec 'npm run test'
 pnpm run build
 firebase --project=fakeproject --only firestore,auth,hosting emulators:exec 'pnpm exec playwright test'
