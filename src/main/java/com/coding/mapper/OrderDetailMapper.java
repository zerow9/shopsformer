package com.coding.mapper;

import com.coding.paging.PagingCustomOrderDetail;
import com.coding.pojo.OrderDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDetailMapper {

    /**
     * 根据订单详情主键进行查询
     * @param orderDetailId
     * @return
     * @throws Exception
     */
    public OrderDetail selectOrderDetailByPrimaryKey(Integer orderDetailId) throws Exception;

    /**
     * 根据订单详情主键删除
     * @param orderDetailId
     * @return
     * @throws Exception
     */
    public int deleteOrderDetailByPrimaryKey(Integer orderDetailId)throws Exception;

    /**
     * 订单详情批量删除
     * @param oderDetailIdArray
     * @return
     * @throws Exception
     */
    public int deleteOrderDetailByPrimaryKeyArray(@Param("oderDetailIdArray") Integer[] oderDetailIdArray)throws Exception;

    /**
     * 插入新的订单详情
     * @param orderDetail
     * @return
     * @throws Exception
     */
    public int insertOrderDetailSelective(OrderDetail orderDetail)throws Exception;

    /**
     * 根据订单详情主键修改订单详情
     * @param orderDetail
     * @return
     * @throws Exception
     */
    public int updateOrderDetailByPrimaryKeySelective(OrderDetail orderDetail)throws Exception;

    /**
     * 订单详情综合大查询
     * @param pagingCustomOrderDetail
     * @return
     * @throws Exception
     */
    public List<OrderDetail> selectOrderDetail (PagingCustomOrderDetail pagingCustomOrderDetail)throws Exception;

    /**
     * 查询订单详情中有多少条数据
     * @return
     * @throws Exception
     */
    public Integer selectOrderDetailCount()throws Exception;

    /**
     * 获取 OrderDetail 表的所有字段名
     * @return OrderDetail 表中所有的字段名
     * @throws Exception
     */
    public String selectOrderDetailTableColumns()throws Exception;

    /**
     * 根据用户ID和商品编码组查询订单ID
     * @param pagingCustomOrderDetail 封装了基本查询信息的 Paging 类扩展类 PagingCustomOrderDetail 类对象
     * @return 满足查询条件的订单ID组
     * @throws Exception
     */
    public List<Integer> selectOrdersIdArrayByUuidAndItemCodeArray(PagingCustomOrderDetail pagingCustomOrderDetail)throws Exception;
}