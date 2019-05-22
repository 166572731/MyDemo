package org.java.realm;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5 {
        public static void main(String[] args) {
            Md5Hash md5 = new Md5Hash("123", "chenlei",3 );
            System.out.println(md5.toString());
        }
}
