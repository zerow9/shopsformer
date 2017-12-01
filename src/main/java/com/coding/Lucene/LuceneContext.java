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
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
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
    public static LuceneContext getInstance() throws Exception {
        if (instance == null) {
            instance = new LuceneContext();
            init();
        }
        return instance;
    }

    //单列初始化操作
    private static void init() throws Exception {
//        String dicUrl = new File(".").getCanonicalPath();
//        String pathString = dicUrl.substring(0, dicUrl.lastIndexOf(File.separator));
//        directory = FSDirectory.open(new File(pathString + File.separator+"shops"+File.separator + "index"));
//        String dicUrl = new File(".").getCanonicalPath();
//        directory = FSDirectory.open(new File(dicUrl+File.separator + "index"));
//        directory = FSDirectory.open(new File("C:\\Users\\ASUS\\Desktop\\Java Web\\apache-tomcat-7.0.42\\bin\\index"));
//        String dicUrl = getPathname();
//        if (dicUrl == null || dicUrl.equals("")) throw new Exception("索引库路径为空.");
//        directory =FSDirectory.open(new File(dicUrl));
        directory = FSDirectory.open(new File("D:\\index"));//开发环节路径
//        directory = FSDirectory.open(new File("/var/www/shop/index"));//开发环节路径
        version = Version.LUCENE_35;
        analyzer = new StandardAnalyzer(version);
        searcherManager = new SearcherManager(directory, new SearcherWarmer() {
            @Override
            public void warm(IndexSearcher indexSearcher) throws IOException {
//                System.out.println("has -----------------------------------change.");
            }
        }, Executors.newCachedThreadPool());
    }
    private static String getPathname() throws IOException {
        Element element = null;
        File directory = new File("");// 参数为空
        String courseFile = directory.getCanonicalPath();

//        File f = new File(courseFile+"\\src\\main\\resources\\lucene.xml");   //测试路径,如果索引库为空,那么注释掉下面的代码,取消这一行代码注释即可
        File f = new File(LuceneContext.class.getClassLoader().getResource("").getPath()+File.separator+"lucene.xml");  //部署tomcat路径

        DocumentBuilder db = null;
        DocumentBuilderFactory dbf = null;
        try {
            dbf = DocumentBuilderFactory.newInstance();
            db = dbf.newDocumentBuilder();
            Document dt = db.parse(f);
            element = dt.getDocumentElement();
            NodeList childNodes = element.getChildNodes();
            for (int i = 0; i < childNodes.getLength(); i++) {
                Node node1 = childNodes.item(i);
                if ("Lucene".equals(node1.getNodeName())) {
                    NodeList nodeDetail = node1.getChildNodes();
                    for (int j = 0; j < nodeDetail.getLength(); j++) {
                        Node detail = nodeDetail.item(j);
                        if ("path".equals(detail.getNodeName())) // 输出path
                            return detail.getTextContent();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
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
