const { expect } = require("@jest/globals");
function sum(a, b ) {
    return a + b;
}
test('adds 1+2 to be equal to 3', () => {
    expect( sum(1,2) ).toBe(3);
});