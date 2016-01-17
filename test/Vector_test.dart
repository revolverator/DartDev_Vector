// Copyright (c) 2015, Ben Sheron. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library Vector.test;

import 'package:Vector/Vector.dart';
import 'package:test/test.dart';

void main() {
  group('V2', () {
    V2 zeroVector2;
    V2 oneVector2;

    setUp(() {
      zeroVector2 = new V2.Zero();
      oneVector2 = new V2.One();
    });

    test('Test zero', () {
      expect(zeroVector2.x == 0.0 && zeroVector2.y == 0.0, isTrue);
    });

    test('Test one', () {
      expect(oneVector2.x == 1.0 && oneVector2.y == 1.0, isTrue);
    });

    test('Test operations', (){
    	V2 v1 = new V2(2.0, 3.0);
    	V2 v2 = new V2(10.0, 0.0);
    	double c1 = 8.0;
    	double c2 = 4.0;

    	// (12, 3)
    	V2 v3 = v2 + v1;

    	// (96, 24)
    	V2 v4 = v3 * c1;

    	// (24, 6)
    	V2 v5 = v4 / c2;

    	// (23, 5)
    	V2 v6 = v5 - new V2.One();
    	expect(v6.x == 23.0 && v6.y == 5.0, isTrue);
    	});

  });
  group('V', () {
    V zeroVector;
    V oneVector;

    setUp(() {
      zeroVector = new V.All(4, 0.0);
      oneVector = new V.All(4, 1.0);
    });

    // "All" tests
    test('Test correct number of elements', (){
      expect(zeroVector.list.length == 4, isTrue);
    });
    
    test('Test all zero', () {
      expect(zeroVector.list.every((d) => d == 0.0), isTrue);
    });

    test('Test all one', () {
      expect(oneVector.list.every((d) => d == 1.0), isTrue);
    });

    test('Test zero constructor', () {
      V z = new V.Zero(10);
      expect(z.list.every((d) => d ==0.0), isTrue);
      expect(z.list.length == 10, isTrue);
    });

    test('Test one constructor', () {
      V o = new V.One(10);
      expect(o.list.every((d) => d ==1.0), isTrue);
      expect(o.list.length == 10, isTrue);
    });

    // Test operations
    test('Test []', () {
      V v = new V.Zero(3);
      v[0] = 1.0;
      v[1] = 2.0;
      v[2] = 3.0;
      expect(v[0] == 1.0, isTrue);
      expect(v[1] == 2.0, isTrue);
      expect(v[2] == 3.0, isTrue);
    });

    test('Test +', () {
      V v1 = new V.Zero(3);
      v1[0] = 1.0;
      v1[1] = 2.0;
      v1[2] = 3.0;
      V v2 = new V.Zero(3);
      v2[0] = 4.0;
      v2[1] = -200.0;
      v2[2] = 32.0;

      V v = v1 + v2;

      expect(v[0] == 5.0, isTrue);
      expect(v[1] == -198.0, isTrue);
      expect(v[2] == 35.0, isTrue);
    }); 

    test('Test -', () {
      V v1 = new V.Zero(3);
      v1[0] = 1.0;
      v1[1] = 2.0;
      v1[2] = 3.0;
      V v2 = new V.Zero(3);
      v2[0] = 4.0;
      v2[1] = -200.0;
      v2[2] = 32.0;

      V v = v1 - v2;

      expect(v[0] == -3.0, isTrue);
      expect(v[1] == 202.0, isTrue);
      expect(v[2] == -29.0, isTrue);
    }); 

    test('Test *', () {
      V v1 = new V.Zero(3);
      v1[0] = 1.0;
      v1[1] = 2.0;
      v1[2] = 3.0;

      V va = v1 * 3.0;
      V vb = v1 * -9.0;

      expect(va[0] == 3.0, isTrue);
      expect(va[1] == 6.0, isTrue);
      expect(va[2] == 9.0, isTrue);
      expect(vb[0] == -9.0, isTrue);
      expect(vb[1] == -18.0, isTrue);
      expect(vb[2] == -27.0, isTrue);
    });

    test('Test /', () {
      V v1 = new V.Zero(3);
      v1[0] = 3.0;
      v1[1] = -4.0;
      v1[2] = 5.0;

      V va = v1 / 2.0;
      V vb = v1 / -4.0;

      expect(va[0] == 1.5, isTrue);
      expect(va[1] == -2.0, isTrue);
      expect(va[2] == 2.5, isTrue);
      expect(vb[0] == -0.75, isTrue);
      expect(vb[1] == 1.0, isTrue);
      expect(vb[2] == -1.25, isTrue);
    });

    // template   
    // test('Test ', () {
    //   expect(, isTrue);
    // });
  });
}