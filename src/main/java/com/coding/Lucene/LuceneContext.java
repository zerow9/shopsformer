package com.coding.Lucene;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.search.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executors;

public class LuceneContext {
    private static LuceneContext instance;
    private static Analyzer analyzer;
    private static Version version;
    private static Directory directory;
    private static SearcherManager searcherManager;

    //无参构造函数
    private LuceneContext() {
    }

    //单列设计模式
    public static LuceneContext getInstance() throws IOException {
        if (instance == null) {
            instance = new LuceneContext();
            init();
        }
        return instance;
    }

    //单列初始化操作
    private static void init() throws IOException {
        String dicUrl = new File(".").getCanonicalPath();
        String pathString = dicUrl.substring(0, dicUrl.lastIndexOf(File.separator));
        directory = FSDirectory.open(new File(pathString + File.separator+"shops"+File.separator + "index"));
//        directory =FSDirectory.open(new File("C:\\Users\\ASUS\\Desktop\\Java Web\\apache-tomcat-7.0.42\\index"));
        version = Version.LUCENE_35;
        analyzer = new StandardAnalyzer(version);
        searcherManager = new SearcherManager(directory, new SearcherWarmer() {
            @Override
            public void warm(IndexSearcher indexSearcher) throws IOException {
                System.out.println("has -----------------------------------change.");
            }
        }, Executors.newCachedThreadPool());
    }

    //获得searcher
    public IndexSearcher getSearcher() throws IOException {
        searcherManager.maybeReopen();
        return searcherManager.acquire();
    }

    //关闭searcher
    public void releaseSearcher(IndexSearcher searcher) {
        try {
            searcherManager.release(searcher);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public Version getVersion() {
        return version;
    }

    public Analyzer getAnalyzer() {
        return analyzer;
    }
}
