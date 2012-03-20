build-tests:
	node_modules/.bin/shed-compile lib test-programs --main=hat.run > _build/tests.js

pass: build-tests
	node _build/tests.js hat.tests.pass

fail: build-tests
	node _build/tests.js hat.tests.fail

