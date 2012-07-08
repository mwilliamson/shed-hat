build-tests:
	mkdir -p _build
	node_modules/.bin/shed-compile hat.shed test-programs --main=hat.run > _build/tests.js

pass: build-tests
	node _build/tests.js hat.tests.pass.testCases

fail: build-tests
	node _build/tests.js hat.tests.fail.testCases

mix: build-tests
	node _build/tests.js hat.tests.mix.testCases

async: build-tests
	node _build/tests.js hat.tests.async.testCases
