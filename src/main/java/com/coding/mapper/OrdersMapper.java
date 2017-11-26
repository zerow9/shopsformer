package com.coding.mapper;

import com.coding.paging.PagingCustomOrder;
import com.coding.pojo.Orders;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface OrdersMapper {

    /**
     * 根据订单ID删除订单信息
     * @param orderId 订单ID
     * @return 是否删除成功 非0：成功  0:失败
     */
    public int deleteOrderByPrimaryKey(Integer orderId)throws Exception;

    /**
     * 批量删除订单信息
     * @param orderIdArray 待删除订单ID数组
     * @return 是否删除成功   非0:成功   0:失败
     * @throws Exception
     */
    public int deleteOrderByPrimaryKeyArray(@Param("oderIdArray") Integer[] orderIdArray)throws Exception;

    /**
     * 按需更新订单信息
     * @param order 封装了订单信息的 Orders 类对象
     * @return 是否更新成功 非0：成功  0:失败
     */
    public int updateOrderByPrimaryKeySelective(Orders order)throws Exception;

    /**
     * 按需插入订单信息
     * @param order 封装了订单信息的 Orders 类对象
     * @return 是否插入成功 非0：成功  0:失败
     */
    public int insertOrderSelective(Orders order)throws Exception;

    /**
     * 根据订单ID查询订单信息
     * @param orderId 订单ID
     * @return 符合查询条件的 Orders 类对象
     */
    public Orders selectOrderByPrimaryKey(@Param("orderId") Integer orderId)throws Exception;

    /**
     * 订单表查询功能大集合（传入的时间类型都需要改为 String 类型的）
     *
     * @param pagingCustomOrder
     * @return
     * @throws Exception
     */
    public List<Orders> selectOrder(PagingCustomOrder pagingCustomOrder)throws Exception;

    /**
     * 查询订单表中共有多少数据
     * @return 返回商品表中共有多少数据
     * @throws Exception
     */
    public Integer selectOrderCount()throws Exception;

    /**
     * 获取 Orders 表的所有字段名
     * @return Orders 表中所有的字段名
     * @throws Exception
     */
    public String selectOrdersTableColumns()throws Exception;

    /**
     * 根据查询条件，返回订单总数（例如：某用户未支付订单总数）
     * @return 订单总数
     * @throws Exception
     */
        public Integer selectOredersCountByColumn(PagingCustomOrder pagingCustomOrder)throws Exception;
}