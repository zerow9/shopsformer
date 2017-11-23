package com.coding.Iservice;


import com.coding.Lucene.SearchField;
import com.coding.pojo.Item;
import java.util.List;

public interface IindexItemService {


    /**
     * 根据自定义搜索对象查找索引
     *
     * @param field 自定义的搜索对象
     * @return 返回List的Item商品
     * @throws Exception Lucene异常
     */
    public List<Item> findByIndex(SearchField field) throws Exception;

}
