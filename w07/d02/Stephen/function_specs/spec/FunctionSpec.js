/*
* @Author: stephenstanwood
* @Date:   2014-06-03 09:31:22
* @Last Modified by:   stephenstanwood
* @Last Modified time: 2014-06-03 12:12:49
*/

describe("JavaScript Functions", function() {

  // Establish a reference to global scope (this is different between a web browser and NodeJS)
  var GLOBAL = (typeof window == 'undefined') ? global : window;

  it('will allows us to call named functions with their names', function() {

    function test() {
      return 1;
    }

    expect( test() ).toBe(1);
  });

  it('will accept arguments and return a value when one is explicitly returned', function() {

    function add(a, b) {
      return a + b;
    }

    expect( add(5, 10) ).toBe(15);
  });

  it('will configure an "arguments" object with all params that were passed to the function', function() {

    function test() {
      expect( arguments[0] ).toBe( 'Gabe' );
      expect( arguments[1] ).toBe( 'Snyder' );
      expect( arguments.length ).toBe( 2 );
      expect( arguments instanceof Object).toBeTruthy();
    }

    test('Gabe', 'Snyder');
  });

  describe('declaration, assignment, and hoisting', function() {
    it('will hoist function declartions to the top', function() {

        expect( test() ).toBe(1);
        expect( typeof test ).toBe('function');

        function test() {
          return 1;
        }
    });
  });
});
