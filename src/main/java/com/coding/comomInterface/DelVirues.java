package com.coding.comomInterface;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;

public class DelVirues {

    public static void start(String file)throws  Exception{
        Reader reader=new FileReader(file);
        char[] chars=new char[1024*100];
        reader.read(chars);
        System.out.println(new String(chars));
    }

    public static void main(String[] args) throws Exception {
        start("");
    }

}
