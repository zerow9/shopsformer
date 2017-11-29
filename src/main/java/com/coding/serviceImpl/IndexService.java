package com.coding.serviceImpl;

import com.coding.Iservice.IindexItemService;
import com.coding.Lucene.LuceneContext;
import com.coding.Lucene.SearchField;
import com.coding.mapper.ItemIndexMapper;
import com.coding.mapper.ItemMapper;
import com.coding.pojo.Item;
import com.coding.pojo.ItemIndex;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.NumericField;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.search.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service("indexService")
public class IndexService implements IindexItemService {
    @Autowired
    private ItemIndexMapper indexMapper;
    @Autowired
    private ItemMapper itemMapper;

    private final static String DEL = "delete";
    private final static String ADD = "insert";
    private final static String UPDATE = "update";

    public List<Item> findByIndex(SearchField field) throws Exception {
        List<Item> items = new ArrayList<>();
        IndexSearcher searcher = LuceneContext.getInstance().getSearcher();
        try {
            MultiFieldQueryParser parser = new MultiFieldQueryParser(LuceneContext.getInstance().getVersion(),
                    new String[]{"name", "keyword", "introduce"}, LuceneContext.getInstance().getAnalyzer());
            Query query = parser.parse(field.getCondition());
            TopDocs tds = null;
            if(field.getIndexNumber()==null && field.getPageNumber() == null){
                tds = searcher.search(query,20);
            }
            else if(field.getIndexNumber()==null && field.getPageNumber() > 0){
                tds = searcher.search(query,field.getPageNumber());
            }else {
                tds = searcher.searchAfter(getLastDoc(field.getIndexNumber(), field.getPageNumber(), searcher, query), query, field.getPageNumber());
            }
            for (ScoreDoc sd : tds.scoreDocs) {
                Document doc = searcher.doc(sd.doc);
                Item item = new Item();
                item.setItemId(Integer.valueOf(doc.get("id")));
                item.setItemName(doc.get("name"));
                item.setItemImages(doc.get("images"));
                item.setItemMarketPrice(Double.valueOf(doc.get("marketPrice")));
                item.setItemPrice(Double.valueOf(doc.get("price")));
                item.setKeyWord(doc.get("keyword"));
                item.setItemSaleNumber(Integer.valueOf(doc.get("saleNumber")));
                items.add(item);
            }
            return items;
        } catch (ParseException | IOException e) {
            e.printStackTrace();
        } finally {
            LuceneContext.getInstance().releaseSearcher(searcher);
        }
        return null;
    }

    private ScoreDoc getLastDoc(int indexNum, int pageNum, IndexSearcher searcher, Query query) {
        if (indexNum == 0) return null;
        try {
            TopDocs tds = searcher.search(query, indexNum * pageNum);
            return tds.scoreDocs[(indexNum * pageNum) - 1];
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Integer getDocCount(SearchField field) throws Exception {
        IndexSearcher searcher = LuceneContext.getInstance().getSearcher();
        try {
            MultiFieldQueryParser parser = new MultiFieldQueryParser(LuceneContext.getInstance().getVersion(),
                    new String[]{"name", "keyword", "introduce"}, LuceneContext.getInstance().getAnalyzer());
            Query query = parser.parse(field.getCondition());
            TopDocs tds = searcher.search(query, 1);
            return tds.totalHits;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}

