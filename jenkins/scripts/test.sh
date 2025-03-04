#!/usr/bin/env sh

echo 'The following "npm" command (if executed) installs the "cross-env" dependency into the local "node_modules" directory, which will ultimately be stored in the Jenkins home directory. As described in https://docs.npmjs.com/cli/install, the "--save-dev" flag causes the "cross-env" dependency to be installed as "devDependencies" (as opposed to "dependencies").'
set -x
npm install --save-dev cross-env
set +x

echo 'The following "npm" command tests that your simple Node.js/React application renders satisfactorily. This command actually invokes the test runner Jest (https://facebook.github.io/jest/).'
set -x
npm test
