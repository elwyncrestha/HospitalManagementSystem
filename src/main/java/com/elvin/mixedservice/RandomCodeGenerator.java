/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.elvin.mixedservice;

/**
 *
 * @author elwyn
 */
public class RandomCodeGenerator {

    public String getRandomCode(int codeSize) {
        //codeSize = size of generated code
        
        char[] chars = new char[62]; // sum of letters and numbers

        int i = 0;

        for (char c = 'a'; c <= 'z'; c++) { // for small letters
            chars[i++] = c;
        }

        for (char c = '0'; c <= '9'; c++) { // for numbers
            chars[i++] = c;
        }

        for (char c = 'A'; c <= 'Z'; c++) { // for capital letters
            chars[i++] = c;
        }

        String code = "";

        for (i = 0; i < codeSize; i++) {
            char c = chars[(int) (Math.random() * chars.length)];
            code = code + c;
        }
        
        return code;
    }
}