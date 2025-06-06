#!/bin/bash

echo "Running all load tests..."
echo "Light load test (100 users)"
npm run test:light

echo "Medium load test (500 users)"
npm run test:medium

echo "Heavy load test (1000 users)"
npm run test:heavy

echo "Stress test (ramp to 500 users)"
npm run test:stress

echo "All tests completed!"
