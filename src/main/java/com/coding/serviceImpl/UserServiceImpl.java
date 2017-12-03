package com.coding.serviceImpl;

import com.coding.CustomVo.CustomVoAddressDetail;
import com.coding.CustomVo.CustomVoItemsByOrderDetailId;
import com.coding.CustomVo.CustomVoItemsByOrderId;
import com.coding.CustomVo.CustomVoOrdersByUserUuidAndStatus;
import com.coding.Iservice.IUserService;
import com.coding.comomInterface.ErrorExc;
import com.coding.filter.Encoding;
import com.coding.filter.Filter;
import com.coding.mapper.*;
import com.coding.paging.*;
import com.coding.pojo.*;
import org.aspectj.weaver.ast.Not;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class UserServiceImpl extends ErrorExc implements IUserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AddressMapper addressMapper;
    @Autowired
    private ItemTypeMapper itemTypeMapper;
    @Autowired
    private ItemMapper itemMapper;
    @Autowired
    private ComplaintMapper complaintMapper;
    @Autowired
    private OrdersMapper ordersMapper;
    @Autowired
    private OrderDetailMapper orderDetailMapper;
    @Autowired
    private NoticeMapper noticeMapper;
    @Autowired
    private ShopMapper shopMapper;
    @Autowired
    private ScoreMapper scoreMapper;
    @Autowired
    private CartMapper cartMapper;
    @Autowired
    private CollectMapper collectMapper;
    @Autowired
    private DiscussMapper discussMapper;

    /*----------------------------------------用户表------------------------------------------------------------------*/

    @Transactional(rollbackFor = Exception.class)
    public void insertUser(User user) throws Exception {
        try {
            //对数据进行过滤
            user = (User) Filter.filterObject(user);
            userMapper.insertUser(user);
        } catch (Exception e) {
            throw new Exception("插入用戶信息时出錯");
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertUserSelective(User user) throws Exception {
        try {
            user = (User) Filter.filterObject(user);
            String salt = Encoding.getGenerateSalt();
            user.setSalt(salt);
            user.setUserPassword(user.getUserPassword() + salt);
            userMapper.insertUserSelective(user);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("添加用户信息时出错");
        }
    }

    public User selectUserByPrimaryKey(String userUuid) throws Exception {
        if (userUuid != null && !userUuid.equals("")) {
            User user = userMapper.selectUserByPrimaryKey(userUuid);
            except(user, "用户查询为空");
            //对结果集进行过滤
            user = (User) Filter.filterObject(user);
            return user;

        }
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateUserByPrimaryKey(User user) throws Exception {
        try {
            //对数据进行过滤
            user = (User) Filter.filterObject(user);

            except(userMapper.updateUserByPrimaryKey(user));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改用户信息时出错");
            throw e;
        }


    }

    @Transactional(rollbackFor = Exception.class)
    public void updateUserByPrimaryKeySelective(User user) throws Exception {
        try {
            //对数据进行过滤
            user = (User) Filter.filterObject(user);
            PagingCustomUser pagingCustomUser = new PagingCustomUser();
            pagingCustomUser.setUser(user);
            except(userMapper.updateUserByPrimaryKeySelective(user));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("按需修改用户信息时出错");
            throw e;
        }
    }

    public Integer selectUserCount() throws Exception {
        try {
            return userMapper.selectUserCount();
        } catch (Exception e) {
            throw new Exception("查询用户总数时出错");
        }
    }

    public List<String> selectUserPassword(String userPhone) throws Exception {
        if (userPhone != null && !userPhone.equals("")) {
            //对数据进行清理
            userPhone = Filter.stripXSS(userPhone);
            List<String> passwords = userMapper.selectUserPassword(userPhone);
            if (passwords.isEmpty()) throw new Exception("查询到的密码列表返回为空");
            return passwords;
        }
        return null;
    }

    public Boolean registerUserPasswordByPhone(String userPhone) throws Exception {
        if (userPhone != null && !userPhone.equals("")) {
            //对数据进行清理
            userPhone = Filter.stripXSS(userPhone);
            User user = userMapper.selectUserByPhone(userPhone);
            if (user != null)
                return false;
        }
        return true;
    }

    public String selectMD5(String password) throws Exception {
        if (password != null && !password.equals("")) {
            return userMapper.selectMD5(password);
        }
        return null;
    }

    public List<String> selectUserFaceImages(String userEmail) throws Exception {
        if (userEmail != null && !userEmail.equals("")) {
            return userMapper.selectUserFaceImages(userEmail);
        }
        return null;
    }

    /*------------------------------------------收货地址表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteAddressByPrimaryKey(Integer addressId) throws Exception {
        if (addressId != null && addressId != 0) {
            try {
                except(addressMapper.deleteAddressByPrimaryKey(addressId));
//                addressMapper.deleteAddressByPrimaryKey(addressId);
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除收获地址时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertAddress(Address address) throws Exception {
        try {
            address = (Address) Filter.filterObject(address);
            addressMapper.insertAddress(address);
        } catch (Exception e) {
            throw new Exception("插入收获地址时出错");
        }
    }

    public Address selectAddressByPrimaryKey(Integer addressId) throws Exception {
        if (addressId != null && addressId != 0) {
            Address address = addressMapper.selectAddressByPrimaryKey(addressId);
            except(address, "收货地址查询为空");

            //过滤从数据库中拿出的畸形数据
            if (address != null) {
                address = (Address) Filter.filterObject(address);
            }
            return address;
        }
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateAddressByPrimaryKey(Address address) throws Exception {
        try {
            //过滤畸形数据
            address = (Address) Filter.filterObject(address);

            except(addressMapper.updateAddressByPrimaryKey(address));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改收获地址时出错");
            throw e;
        }
    }
    public Integer selectDefaultAddressByUserUuid(String userUuid) throws Exception{
        Integer addressId = null;
        try {
            if (userUuid!=null&&!userUuid.equals("")){
                addressId = addressMapper.selectDefaultAddressByUuid(userUuid);
            }
        }catch (Exception e){
        }
        return addressId;
    }

    public List<Address> selectAddressByUserID(String userUuid) throws Exception {
        if (userUuid != null && !userUuid.equals("")) {
            //过滤字符串，防止sql Injection
            userUuid = Filter.stripXSS(userUuid);
            List<Address> addresses = addressMapper.selectAddressByUserID(userUuid);
            // if (addresses.isEmpty()) throw new Exception("用户收获地址查询为空");
            //清洗结果集
            for (Address address : addresses) {
                address = (Address) Filter.filterObject(address);
            }
            return addresses;
        }
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateAddressUserDefaultAddress(Address address) throws Exception {
        try {
            //清洗数据
            address = (Address) Filter.filterObject(address);

            except(addressMapper.updateAddressUserDefaultAddress(address));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改默认收获地址时出错");
            throw e;
        }
    }

    public Integer selectAddressCountByColumn(PagingCustomAddress pagingCustomAddress) throws Exception {
        try {
            return addressMapper.selectAddressCountByColumn(pagingCustomAddress);
        } catch (Exception e) {
            throw new Exception("查询地址总数时出错");
        }
    }

    /*------------------------------------------用户投诉表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteComplaintByPrimaryKey(Integer complaintId) throws Exception {
        if (complaintId != null && complaintId != 0) {
            try {
                except(complaintMapper.deleteComplaintByPrimaryKey(complaintId));
//                addressMapper.deleteAddressByPrimaryKey(addressId);
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除投诉信息时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertComplaintSelective(Complaint complaint) throws Exception {
        try {
            //清洗数据
            complaint = (Complaint) Filter.filterObject(complaint);
            complaintMapper.insertComplaintSelective(complaint);
        } catch (Exception e) {
            throw new Exception("添加投诉信息时出错");
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateComplaintByPrimaryKeySelective(Complaint complaint) throws Exception {
        try {
            //清洗数据
            complaint = (Complaint) Filter.filterObject(complaint);

            except(complaintMapper.updateComplaintByPrimaryKeySelective(complaint));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改投诉信息时出错");
            throw e;
        }
    }

    public Complaint selectComplaintByPrimaryKey(Integer complaintId) throws Exception {
        if (complaintId != null && complaintId != 0) {
            Complaint complaint = complaintMapper.selectComplaintByPrimaryKey(complaintId);
            except(complaint, "查询用户投诉信息为空");
            //清洗结果集
            complaint = (Complaint) Filter.filterObject(complaint);

            return complaint;
        }
        return null;
    }

    public List<Complaint> selectComplaint(PagingCustomComplaint pagingCustomComplaint) throws Exception {
        try {
            //对查询数据进行清洗
            String[] strArrayColumn = complaintMapper.selectComplaintTableColumns().split(",");
            pagingCustomComplaint = (PagingCustomComplaint) Filter.preventSqlInjection(pagingCustomComplaint, strArrayColumn);


            List<Complaint> complaints = complaintMapper.selectComplaint(pagingCustomComplaint);
            if (complaints.isEmpty()) throw new Exception("用户投诉信息查询为空");

            //对结果集进行清洗
            for (Complaint complaint :
                    complaints) {
                complaint = (Complaint) Filter.filterObject(complaint);
            }

            return complaints;
        } catch (Exception e) {
            if (!e.getMessage().contains("投诉信息查询为空"))
                throw new Exception("参数查询用户投诉列表出错，请检查参数");
            throw e;
        }
    }

    /*------------------------------------------商品类别表------------------------------------------------------------------*/
    public ItemType selectItemTypeByPrimaryKey(Integer itemTypeId) throws Exception {
        if (itemTypeId != null && itemTypeId != 0) {
            ItemType itemType = itemTypeMapper.selectItemTypeByPrimaryKey(itemTypeId);
            except(itemType, "查询商品类别为空");
            //对结果集进行清洗
            itemType = (ItemType) Filter.filterObject(itemType);
            return itemType;
        }
        return null;
    }

    public List<ItemType> selectItemTypeAll() throws Exception {
        List<ItemType> itemTypes = itemTypeMapper.selectItemTypeAll();
        if (itemTypes.isEmpty()) throw new Exception("查询所有商品类别为空");
        //对结果集进行清洗
        for (ItemType itemType :
                itemTypes) {
            itemType = (ItemType) Filter.filterObject(itemType);
        }

        return itemTypes;
    }

    public List<ItemType> selectItemType(PagingCustomItemType pagingCustomItemType) throws Exception {
        try {
            //对查询条件进行清洗
            String[] strArrayColumn = itemTypeMapper.selectItemTypeTableColumns().split(",");
            pagingCustomItemType = (PagingCustomItemType) Filter.preventSqlInjection(pagingCustomItemType, strArrayColumn);


            List<ItemType> itemTypes = itemTypeMapper.selectItemType(pagingCustomItemType);
            if (itemTypes.isEmpty()) throw new Exception("查询到的商品类别列表为空");
            //对结果集进行清洗
            for (ItemType itemType :
                    itemTypes) {
                itemType = (ItemType) Filter.filterObject(itemType);
            }

            return itemTypes;
        } catch (Exception e) {
            if (!e.getMessage().contains("商品类别列表为空"))
                throw new Exception("参数查询商品类别列表出错，请检查参数");
            throw e;
        }
    }

    public Integer selectItemTypeCount() throws Exception {
        try {
            return itemTypeMapper.selectItemTypeCount();
        } catch (Exception e) {
            throw new Exception("查询商品总数时出错");
        }
    }

    /*------------------------------------------商品表------------------------------------------------------------------*/
    public Item selectItemByPrimaryKey(Integer itemId) throws Exception {
        if (itemId != null && itemId != 0) {
            Item item = itemMapper.selectItemByPrimaryKey(itemId);
            except(item, "查询商品时为空");
            //对结果集进行清洗
            item = (Item) Filter.filterObject(item);

            return item;
        }
        return null;
    }

    public List<Item> selectItemAll() throws Exception {
        List<Item> items = itemMapper.selectItemAll();
        if (items.isEmpty()) throw new Exception("查询商品列表为空");
        //对结果集清洗
        for (Item item :
                items) {
            item = (Item) Filter.filterObject(item);
        }

        return items;
    }

    public List<Item> selectItemFuzzyByItemName(String fuzzyItemName) throws Exception {
        if (fuzzyItemName != null && !fuzzyItemName.equals("")) {
            List<Item> items = itemMapper.selectItemFuzzyByItemName(fuzzyItemName);
            if (items.isEmpty()) throw new Exception("没有该关键词的商品");
            return items;
        }
        return null;
    }

    public List<Item> selectItemByItemType(Integer itemTypeId) throws Exception {
        if (itemTypeId != null && itemTypeId != 0) {
            List<Item> items = itemMapper.selectItemByItemType(itemTypeId);
            if (items.isEmpty()) throw new Exception("没有该商品类别的商品");
            //对结果集进行清洗
            for (Item item :
                    items) {
                item = (Item) Filter.filterObject(item);
            }

            return items;
        }
        return null;
    }

    public List<Item> selectItemFuzzyByItemNameSort(String fuzzyItemName, String sortRule, String sortColumn) throws Exception {
        if (fuzzyItemName != null && sortRule != null && sortColumn != null) {
            List<Item> items;
            try {
                //数据清洗
                sortColumn = Filter.stripXSS(sortColumn);
                sortRule = Filter.stripXSS(sortRule);
                fuzzyItemName = Filter.stripXSS(fuzzyItemName);

                items = itemMapper.selectItemFuzzyByItemNameSort(fuzzyItemName, sortRule, sortColumn);
            } catch (Exception e) {
                throw new Exception("商品参数错误，请检查重试");
            }
            if (items.isEmpty()) throw new Exception("该参数查询的商品列表为空");
            return items;
        }
        return null;
    }

    public List<Item> selectItem(PagingCustomItem pagingCustomItem) throws Exception {
        try {
            //对查询条件进行清洗
            pagingCustomItem = (PagingCustomItem) Filter.filterObject(pagingCustomItem);

            List<Item> items = itemMapper.selectItem(pagingCustomItem);
            if (items.isEmpty()) throw new Exception("查询到的商品列表为空");
            //对结果集进行清洗
            for (Item item :
                    items) {
                item = (Item) Filter.filterObject(item);
            }
            return items;
        } catch (Exception e) {
            if (!e.getMessage().contains("商品列表为空"))
                throw new Exception("参数查询商品列表出错，请检查参数");
            throw e;
        }
    }

    public Integer selectItemCount() throws Exception {
        try {
            return itemMapper.selectItemCount();
        } catch (Exception e) {
            throw new Exception("查询商品总数时出错");
        }
    }

    /*------------------------------------------订单表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteOrderByPrimaryKey(Integer orderId) throws Exception {
        if (orderId != null && orderId != 0) {
            try {
                except(ordersMapper.deleteOrderByPrimaryKey(orderId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除订单信息时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteOrderByPrimaryKeyArray(Integer[] orderIdArray) throws Exception {
        if (orderIdArray == null || "".equals(orderIdArray)) throw new Exception("没有orderIdArray数组信息，批量订单删除出错");
        try {
            except(ordersMapper.deleteOrderByPrimaryKeyArray(orderIdArray));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("批量删除订单时出错");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertOrderSelective(Orders order) throws Exception {
        try {
            //对数据集进行清洗，防止xss
            order = (Orders) Filter.filterObject(order);
            ordersMapper.insertOrderSelective(order);
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("添加订单时出错");
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public int insertOrderSelectiveReturnId(Orders order) throws Exception {
        try {
            // order = (Orders) Filter.filterObject(order);
            ordersMapper.insertOrderSelective(order);
            return order.getOrderId();
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("添加订单时出错");
        }
    }

    public Orders selectOrderByPrimaryKey(Integer orderId) throws Exception {
        if (orderId != null && orderId != 0) {
            Orders orders = ordersMapper.selectOrderByPrimaryKey(orderId);
            except(orders, "根据订单ID查询订单为空");
            //对结果集进行清洗
            orders = (Orders) Filter.filterObject(orders);

            return orders;
        }
        return null;
    }

    public List<Orders> selectOrder(PagingCustomOrder pagingCustomOrder) throws Exception {
        try {
            //对查询条件进行清洗
            String[] strArrayColumn = ordersMapper.selectOrdersTableColumns().split(",");
            pagingCustomOrder = (PagingCustomOrder) Filter.preventSqlInjection(pagingCustomOrder, strArrayColumn);

            List<Orders> orders = ordersMapper.selectOrder(pagingCustomOrder);
            if (orders.isEmpty()) throw new Exception("查询到的订单列表为空");
            //对结果集进行清洗
            for (Orders order :
                    orders) {
                order = (Orders) Filter.filterObject(order);
            }

            return orders;
        } catch (Exception e) {
            if (!e.getMessage().contains("订单列表为空"))
                throw new Exception("参数查询订单列表出错，请检查参数");
            throw e;
        }
    }

    public List<CustomVoItemsByOrderId> selectItemsByOrderId(String userUuid) throws Exception {
        if (userUuid != null && !userUuid.equals("")) {
            //初始化返回类
            List<CustomVoItemsByOrderId> customVoItemsByOrderIds = new ArrayList<CustomVoItemsByOrderId>();
            //初始化订单查询
            PagingCustomOrder pagingCustomOrder = new PagingCustomOrder();
            Orders orders = new Orders();

            //初始化订单详情查询
            PagingCustomOrderDetail pagingCustomOrderDetail = new PagingCustomOrderDetail();
            OrderDetail orderDetail = new OrderDetail();

            orders.setUserUuid(userUuid);
            pagingCustomOrder.setOrder(orders);
            //对查询条件进行清洗
            String[] strArrayColumn = ordersMapper.selectOrdersTableColumns().split(",");
            pagingCustomOrder = (PagingCustomOrder) Filter.preventSqlInjection(pagingCustomOrder, strArrayColumn);

            List<Orders> orders1 = ordersMapper.selectOrder(pagingCustomOrder);
            if (!orders1.isEmpty()) {
                for (Orders ord : orders1) {
                    List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds = new ArrayList<CustomVoItemsByOrderDetailId>();
                    CustomVoItemsByOrderId customVoItemsByOrderId = new CustomVoItemsByOrderId();
                    customVoItemsByOrderId.setOrdersId(ord.getOrderId());
                    customVoItemsByOrderId.setOrderPaid(ord.getOrderPaid());
                    customVoItemsByOrderId.setOrderCompletionTime(ord.getOrderCompletionTimeToString());
                    customVoItemsByOrderId.setOrderFreight(ord.getOrderFreight());
                    orderDetail.setOrderId(ord.getOrderId());
                    pagingCustomOrderDetail.setOrderDetail(orderDetail);
                    //对查询条件进行清洗
                    String[] strArrayColumn1 = orderDetailMapper.selectOrderDetailTableColumns().split(",");
                    pagingCustomOrderDetail = (PagingCustomOrderDetail) Filter.preventSqlInjection(pagingCustomOrderDetail, strArrayColumn1);

                    List<OrderDetail> orderDetails = orderDetailMapper.selectOrderDetail(pagingCustomOrderDetail);
                    if (!orderDetails.isEmpty()) {
                        for (OrderDetail orderdet : orderDetails) {
                            CustomVoItemsByOrderDetailId customVoItemsByOrderDetailId = new CustomVoItemsByOrderDetailId();
                            customVoItemsByOrderDetailId.setItemNum(orderdet.getItemNumber());
                            customVoItemsByOrderDetailId.setItem(itemMapper.selectItemByPrimaryKey(orderdet.getItemId()));
                            customVoItemsByOrderDetailIds.add(customVoItemsByOrderDetailId);
                        }
                    }
                    customVoItemsByOrderId.setCustomVoItemsByOrderDetailIds(customVoItemsByOrderDetailIds);
                    customVoItemsByOrderIds.add(customVoItemsByOrderId);
                }
            }
            return customVoItemsByOrderIds;

        }
        return null;
    }

    public CustomVoAddressDetail queryAddressDetail(Integer orderId) throws Exception {
        if (orderId != null && orderId != 0) {
            CustomVoAddressDetail customVoAddressDetail = new CustomVoAddressDetail();
            List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds = new ArrayList<CustomVoItemsByOrderDetailId>();

            Orders orders = ordersMapper.selectOrderByPrimaryKey(orderId);
            orders = (Orders) Filter.filterObject(orders);
            customVoAddressDetail.setOrders(orders);  //set orders
            Address address = addressMapper.selectAddressByPrimaryKey(orders.getAddressId());
            customVoAddressDetail.setAddress(address); // set address

            //初始化订单详情查询
            PagingCustomOrderDetail pagingCustomOrderDetail = new PagingCustomOrderDetail();
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrderId(orders.getOrderId());
            pagingCustomOrderDetail.setOrderDetail(orderDetail);
            // <------------------------------下面的是对Paging对象进行数据过滤，防止SQL Injection-------------------------------->
            String[] strArrayColumn = orderDetailMapper.selectOrderDetailTableColumns().split(",");
            pagingCustomOrderDetail = (PagingCustomOrderDetail) Filter.preventSqlInjection(pagingCustomOrderDetail, strArrayColumn);
            // <------------------------------上面的是对Paging对象进行数据过滤，防止SQL Injection-------------------------------->
            List<OrderDetail> orderDetails = orderDetailMapper.selectOrderDetail(pagingCustomOrderDetail);

            if (!orderDetails.isEmpty()) {
                for (OrderDetail orderdet : orderDetails) {
                    CustomVoItemsByOrderDetailId customVoItemsByOrderDetailId = new CustomVoItemsByOrderDetailId();
                    customVoItemsByOrderDetailId.setItemNum(orderdet.getItemNumber());  //set itemNum
                    customVoItemsByOrderDetailId.setItem(itemMapper.selectItemByPrimaryKey(orderdet.getItemId()));  //set item
                    customVoItemsByOrderDetailIds.add(customVoItemsByOrderDetailId);
                }
                customVoAddressDetail.setCustomVoItemsByOrderDetailIds(customVoItemsByOrderDetailIds);
            }
            return customVoAddressDetail;
        }
        return null;
    }

    public List<CustomVoOrdersByUserUuidAndStatus> queryOrdersByUserUuidAndStatus(Orders orders) throws Exception {
        if (orders.getUserUuid() != null && !orders.getUserUuid().equals("")) {
            //初始化返回类
            List<CustomVoOrdersByUserUuidAndStatus> customVoOrdersByUserUuidAndStatuses = new ArrayList<CustomVoOrdersByUserUuidAndStatus>();
            //初始化订单查询
            PagingCustomOrder pagingCustomOrder = new PagingCustomOrder();

            //初始化订单详情查询
            PagingCustomOrderDetail pagingCustomOrderDetail = new PagingCustomOrderDetail();
            OrderDetail orderDetail = new OrderDetail();

            pagingCustomOrder.setOrder(orders);
            // <------------------------------下面的是对Paging对象进行数据过滤，防止SQL Injection-------------------------------->
            String[] strArrayColumn = ordersMapper.selectOrdersTableColumns().split(",");
            pagingCustomOrder = (PagingCustomOrder) Filter.preventSqlInjection(pagingCustomOrder, strArrayColumn);
            // <------------------------------上面的是对Paging对象进行数据过滤，防止SQL Injection-------------------------------->
            List<Orders> orders1 = ordersMapper.selectOrder(pagingCustomOrder);
            if (!orders1.isEmpty()) {
                for (Orders ord : orders1) {
                    List<CustomVoItemsByOrderDetailId> customVoItemsByOrderDetailIds = new ArrayList<CustomVoItemsByOrderDetailId>();
                    CustomVoOrdersByUserUuidAndStatus customVoOrdersByUserUuidAndStatus = new CustomVoOrdersByUserUuidAndStatus();
                    customVoOrdersByUserUuidAndStatus.setOrders(ord);
                    orderDetail.setOrderId(ord.getOrderId());
                    pagingCustomOrderDetail.setOrderDetail(orderDetail);
                    List<OrderDetail> orderDetails = orderDetailMapper.selectOrderDetail(pagingCustomOrderDetail);
                    if (!orderDetails.isEmpty()) {
                        for (OrderDetail orderdet : orderDetails) {
                            CustomVoItemsByOrderDetailId customVoItemsByOrderDetailId = new CustomVoItemsByOrderDetailId();
                            customVoItemsByOrderDetailId.setItemNum(orderdet.getItemNumber());
                            customVoItemsByOrderDetailId.setItem(itemMapper.selectItemByPrimaryKey(orderdet.getItemId()));
                            customVoItemsByOrderDetailIds.add(customVoItemsByOrderDetailId);
                        }
                    }
                    customVoOrdersByUserUuidAndStatus.setCustomVoItemsByOrderDetailIds(customVoItemsByOrderDetailIds);
                    customVoOrdersByUserUuidAndStatuses.add(customVoOrdersByUserUuidAndStatus);
                }
            }
            return customVoOrdersByUserUuidAndStatuses;
        }
        return null;
    }

    public Integer selectOrdersCountByColumn(PagingCustomOrder pagingCustomOrder) throws Exception {
        try {
            return ordersMapper.selectOredersCountByColumn(pagingCustomOrder);
        } catch (Exception e) {
            throw new Exception("根据查询条件返回订单总数时出错");
        }
    }

    /*------------------------------------------订单详情表------------------------------------------------------------------*/
    public OrderDetail selectOrderDetailByPrimaryKey(Integer orderDetailId) throws Exception {
        if (orderDetailId != null && orderDetailId != 0) {
            OrderDetail orderDetail = orderDetailMapper.selectOrderDetailByPrimaryKey(orderDetailId);
            except(orderDetail, "根据订单ID查询订单为空");
            //对结果集进行清洗
            orderDetail = (OrderDetail) Filter.filterObject(orderDetail);
            return orderDetail;
        }
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteOrderDetailByPrimaryKey(Integer orderDetailId) throws Exception {
        if (orderDetailId != null && orderDetailId != 0) {
            try {
                except(orderDetailMapper.deleteOrderDetailByPrimaryKey(orderDetailId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除订单详情信息时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteOrderDetailByPrimaryKeyArray(Integer[] oderDetailIdArray) throws Exception {
        if (oderDetailIdArray == null || "".equals(oderDetailIdArray))
            throw new Exception("没有oderDetailIdArray数组信息，批量订单详情删除出错");
        try {
            except(orderDetailMapper.deleteOrderDetailByPrimaryKeyArray(oderDetailIdArray));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("批量删除订单详情时出错");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertOrderDetailSelective(OrderDetail orderDetail) throws Exception {
        try {
            //对数据进行清洗
            orderDetail = (OrderDetail) Filter.filterObject(orderDetail);

            orderDetailMapper.insertOrderDetailSelective(orderDetail);
        } catch (Exception e) {
            throw new Exception("添加订单详情时出错");
        }
    }

    public List<OrderDetail> selectOrderDetail(PagingCustomOrderDetail pagingCustomOrderDetail) throws Exception {
        try {
            //对查询条件进行清洗
            pagingCustomOrderDetail = (PagingCustomOrderDetail) Filter.filterObject(pagingCustomOrderDetail);

            List<OrderDetail> orderDetails = orderDetailMapper.selectOrderDetail(pagingCustomOrderDetail);
            if (orderDetails.isEmpty()) throw new Exception("查询到的商品详情列表为空");
            //对结果集进行清洗
            for (OrderDetail orderDetail :
                    orderDetails) {
                orderDetail = (OrderDetail) Filter.filterObject(orderDetail);
            }

            return orderDetails;
        } catch (Exception e) {
            if (!e.getMessage().contains("商品详情列表为空"))
                throw new Exception("参数查询商品详情列表出错，请检查参数");
            throw e;
        }
    }

    public List<PagingCustomItemByOrderDetail> selectItemByOderDetailId(List<Integer> orderDetailsId) throws Exception {
        List<PagingCustomItemByOrderDetail> pagingCustomOrdersLists = new ArrayList<PagingCustomItemByOrderDetail>();
        for (Integer orderDetailId : orderDetailsId) {
            PagingCustomItemByOrderDetail pagingCustomOrdersList = new PagingCustomItemByOrderDetail();
            OrderDetail orderDetail = orderDetailMapper.selectOrderDetailByPrimaryKey(orderDetailId);
            //对结果集进行清洗
            orderDetail = (OrderDetail) Filter.filterObject(orderDetail);

            pagingCustomOrdersList.setItmeNum(orderDetail.getItemNumber());
            pagingCustomOrdersList.setOrdersId(orderDetail.getOrderId());

            pagingCustomOrdersList.setItem(itemMapper.selectItemByPrimaryKey(orderDetail.getItemId()));
            pagingCustomOrdersLists.add(pagingCustomOrdersList);
        }
        return pagingCustomOrdersLists;
    }


    public List<Integer> selectOrdersIdArrayByUuidAndItemCodeArray(PagingCustomOrderDetail pagingCustomOrderDetail) throws Exception {
        try {
            return orderDetailMapper.selectOrdersIdArrayByUuidAndItemCodeArray(pagingCustomOrderDetail);
        } catch (Exception e) {
            throw new Exception("根据用户ID和商品列表查询订单ID出错");
        }
    }
    /*------------------------------------------公告表------------------------------------------------------------------*/

    public Notice selectNoticeByPrimaryKey(Integer noticeId) throws Exception {
        if (noticeId != null && noticeId != 0) {
            Notice notice = noticeMapper.selectNoticeByPrimaryKey(noticeId);
            except(notice, "根据公告ID查询公告为空");
            //结果集进行清洗
            notice = (Notice) Filter.filterObject(notice);

            return notice;
        }
        return null;
    }

    public List<Notice> selectNotice(PagingCustomNotice pagingCustomNotice) throws Exception {
        try {
            //对查询条件进行清洗
            String[] strArrayColumn = noticeMapper.selectNoticeTableColumns().split(",");
            pagingCustomNotice = (PagingCustomNotice) Filter.preventSqlInjection(pagingCustomNotice, strArrayColumn);

            List<Notice> notices = noticeMapper.selectNotice(pagingCustomNotice);
            if (notices.isEmpty()) throw new Exception("查询到的公告列表为空");
            //对结果集进行清洗
            for (Notice notice :
                    notices) {
                notice = (Notice) Filter.filterObject(notice);
            }
            return notices;
        } catch (Exception e) {
            if (!e.getMessage().contains("公告列表为空"))
                throw new Exception("参数公告列表出错，请检查参数");
            throw e;
        }
    }

    public int selectNoticeCount() throws Exception {
        try {
            return noticeMapper.selectNoticeCount();
        } catch (Exception e) {
            throw new Exception("查询公告信息总数时出错");
        }
    }

    /*------------------------------------------商店表------------------------------------------------------------------*/
    public Shop selectShopByPrimaryKey(Integer shopId) throws Exception {
        if (shopId != null && shopId != 0) {
            Shop shop = shopMapper.selectShopByPrimaryKey(shopId);
            except(shop, "根据商店ID查询商店为空");
            return shop;
        }
        return null;
    }

    public List<Shop> selectShop(PagingCustomShop pagingCustomShop) throws Exception {
        try {
            List<Shop> shops = shopMapper.selectShop(pagingCustomShop);
            if (shops.isEmpty()) throw new Exception("查询到的商店列表为空");
            return shops;
        } catch (Exception e) {
            if (!e.getMessage().contains("商店列表为空"))
                throw new Exception("参数商店列表出错，请检查参数");
            throw e;
        }
    }

    public int selectShopCount() throws Exception {
        try {
            return shopMapper.selectShopCount();
        } catch (Exception e) {
            throw new Exception("查询商店信息总数时出错");
        }
    }

    /*------------------------------------------积分明细表------------------------------------------------------------------*/
    public Score selectScoreByPrimaryKey(Integer scoreId) throws Exception {
        if (scoreId != null && scoreId != 0) {
            Score score = scoreMapper.selectScoreByPrimaryKey(scoreId);
            except(score, "根据积分明细ID查询积分明细为空");
            return score;
        }
        return null;
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteScoreByPrimaryKey(Integer scoreId) throws Exception {
        if (scoreId != null && scoreId != 0) {
            try {
                except(scoreMapper.deleteScoreByPrimaryKey(scoreId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除积分明细时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteScoreByPrimaryKeyArray(Integer[] scoreIdArrary) throws Exception {
        if (scoreIdArrary == null || "".equals(scoreIdArrary)) throw new Exception("没有scoreIdArrary数组信息，批量积分明细删除出错");
        try {
            except(scoreMapper.deleteScoreByPrimaryKeyArray(scoreIdArrary));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("批量删除积分明细时出错");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertScoreSelective(Score score) throws Exception {
        try {
            List<Score> scores = scoreMapper.selectScoreRecentChange(score);
            if (!scores.isEmpty()) {
                Score scoreNow = scores.get(0);
                score.setScoreCurrent(scoreNow.getScoreCurrent() + score.getCoreDetail());
                if (score.getCoreDetail() > 0) score.setScoreTatol(scoreNow.getScoreTatol() + score.getCoreDetail());
                else score.setScoreTatol((scoreNow.getScoreTatol()));
                score = (Score) Filter.filterObject(score);
                scoreMapper.insertScoreSelective(score);
            } else {
                score.setScoreCurrent(score.getCoreDetail());
                score.setScoreTatol(score.getCoreDetail());
                score = (Score) Filter.filterObject(score);
                scoreMapper.insertScoreSelective(score);
            }
        } catch (Exception e) {
            throw new Exception("添加积分明细时出错");
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateScoreByPrimaryKeySelective(Score score) throws Exception {
        try {
            except(scoreMapper.updateScoreByPrimaryKeySelective(score));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改积分明细时出错");
            throw e;
        }
    }

    public List<Score> selectScore(PagingCustomScore pagingCustomScore) throws Exception {
        try {
            List<Score> scores = scoreMapper.selectScore(pagingCustomScore);
            if (scores.isEmpty()) throw new Exception("查询到的积分明细列表为空");
            return scores;
        } catch (Exception e) {
            if (!e.getMessage().contains("积分明细列表为空"))
                throw new Exception("参数查询积分明细列表出错，请检查参数");
            throw e;
        }
    }

    public int selectScoreCount() throws Exception {
        try {
            return scoreMapper.selectScoreCount();
        } catch (Exception e) {
            throw new Exception("查询积分明细总数时出错");
        }
    }

    /*------------------------------------------购物车表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteCartByPrimaryKey(Integer cartId) throws Exception {
        if (cartId != null && cartId != 0) {
            try {
                except(cartMapper.deleteCartByPrimaryKey(cartId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除购物车商品时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteCartByPrimaryKeyArray(Integer[] cartIdArray) throws Exception {
        if (cartIdArray == null || "".equals(cartIdArray)) throw new Exception("没有cartIdArray数组信息，批量购物车商品删除出错");
        try {
            except(cartMapper.deleteCartByPrimaryKeyArray(cartIdArray));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("批量删除购物车商品时出错");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertCartSelective(Cart cart) throws Exception {
        try {
            cart = (Cart) Filter.filterObject(cart);
            cartMapper.insertCartSelective(cart);
        } catch (Exception e) {
            throw new Exception("添加购物车时出错");
        }
    }

    public Cart selectCartByPrimaryKey(Integer cartId) throws Exception {
        if (cartId != null && cartId != 0) {
            Cart cart = cartMapper.selectCartByPrimaryKey(cartId);
            except(cart, "根据购物车ID查询购物车为空");
            // <-------------对查询出的结果进行数据清理----------->
            cart = (Cart) Filter.filterObject(cart);

            return cart;
        }
        return null;
    }

    public Integer selectCartCount() throws Exception {
        try {
            return cartMapper.selectCartCount();
        } catch (Exception e) {
            throw new Exception("查询购物车总数时出错");
        }
    }

    public List<Cart> selectCart(PagingCustomCart pagingCustomCart) throws Exception {
        try {
            //  <-----------------------------对数据进行过滤,防止SQL Injection------------------------------->
            String[] strArrayColumn = cartMapper.selectCartTableColumns().split(",");
            pagingCustomCart = (PagingCustomCart) Filter.preventSqlInjection(pagingCustomCart, strArrayColumn);

            List<Cart> carts = cartMapper.selectCart(pagingCustomCart);
            if (carts.isEmpty()) throw new Exception("查询到的购物车列表为空");
            // <------------------------------对数据进行过滤，防止XSS----------------------------------------------------------->
            for (Cart cart :
                    carts) {
                cart = (Cart) Filter.filterObject(cart);
            }
            return carts;
        } catch (Exception e) {
            if (!e.getMessage().contains("购物车列表为空"))
                throw new Exception("参数查询购物车列表出错，请检查参数");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateCartByPrimaryKeySelective(Cart cart) throws Exception {
        try {
            except(cartMapper.updateCartByPrimaryKeySelective(cart));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改购物车信息时出错");
            throw e;
        }
    }

    public List<Cart> selectCartByCartIdArray(PagingCustomCart pagingCustomCart) throws Exception {
        try {
            return cartMapper.selectCartByCartIdArray(pagingCustomCart);
        } catch (Exception e) {
            throw new Exception("ID数组查询购物车列表时出错");
        }
    }

    /*------------------------------------------收藏表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteCollectByPrimaryKey(Integer collectId) throws Exception {
        if (collectId != null && collectId != 0) {
            try {
                except(collectMapper.deleteCollectByPrimaryKey(collectId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除收藏商品时出错");
                throw e;
            }
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void deleteCollectByPrimaryKeyArray(Integer[] collectIdArray) throws Exception {
        if (collectIdArray == null || "".equals(collectIdArray)) throw new Exception("没有collectIdArray数组信息，批量收藏商品删除出错");
        try {
            except(collectMapper.deleteCollectByPrimaryKeyArray(collectIdArray));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("批量删除收藏商品时出错");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void insertCollectSelective(Collect collect) throws Exception {
        try {
            collect = (Collect) Filter.filterObject(collect);
            collectMapper.insertCollectSelective(collect);
        } catch (Exception e) {
            throw new Exception("添加收藏商品时出错");
        }
    }

    public Collect selectCollectByPrimaryKey(Integer collectId) throws Exception {
        if (collectId != null && collectId != 0) {
            Collect collect = collectMapper.selectCollectByPrimaryKey(collectId);
            except(collect, "根据收藏ID查询收藏商品为空");

            // 对结果集进行数据过滤
            collect = (Collect) Filter.filterObject(collect);
            return collect;
        }
        return null;
    }

    public Integer selectCollectCount() throws Exception {
        try {
            return collectMapper.selectCollectCount();
        } catch (Exception e) {
            throw new Exception("查询收藏商品总数时出错");
        }
    }

    public List<Collect> selectCollect(PagingCustomCollect pagingCustomCollect) throws Exception {
        try {

            //  <------------------对查询条件进行过滤------------------------>
            List<Collect> collects = collectMapper.selectCollect(pagingCustomCollect);

            if (collects.isEmpty()) throw new Exception("查询到的收藏列表为空");
            //  <------------------对结果集进行过滤---------------------------------------->
            for (Collect collect :
                    collects) {
                collect = (Collect) Filter.filterObject(collect);
            }
            return collects;
        } catch (Exception e) {
            if (!e.getMessage().contains("收藏列表为空"))
                throw new Exception("参数查询收藏列表出错，请检查参数");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateCollectByPrimaryKeySelective(Collect collect) throws Exception {
        try {
            //  <----------------对数据进行过滤，防止XSS------------------>
            collect = (Collect) Filter.filterObject(collect);

            except(collectMapper.updateCollectByPrimaryKeySelective(collect));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改收藏信息时出错");
            throw e;
        }
    }

    /*------------------------------------------评论表------------------------------------------------------------------*/
    @Transactional(rollbackFor = Exception.class)
    public void deleteDiscussByPrimaryKey(Integer discussId) throws Exception {
        if (discussId != null && discussId != 0) {
            try {
                except(discussMapper.deleteDiscussByPrimaryKey(discussId));
            } catch (Exception e) {
                if (!e.getMessage().contains("操作无效"))
                    throw new Exception("删除评论信息时出错");
                throw e;
            }
        }
    }


    @Transactional(rollbackFor = Exception.class)
    public void insertDiscussSelective(Discuss discuss) throws Exception {
        try {
            //对数据进行过滤
            discuss = (Discuss) Filter.filterObject(discuss);

            discussMapper.insertDiscussSelective(discuss);
        } catch (Exception e) {
            throw new Exception("添加评论信息时出错");
        }
    }

    public Discuss selectDiscussByPrimaryKey(Integer discussId) throws Exception {
        if (discussId != null && discussId != 0) {
            Discuss discuss = discussMapper.selectDiscussByPrimaryKey(discussId);
//            except(discuss, "根据评论ID查询评论信息为空");
            //对结果集进行过滤
            if (discuss != null) {
                discuss = (Discuss) Filter.filterObject(discuss);
            }
            return discuss;
        }
        return null;
    }

    public Integer selectDiscussCount(PagingCustomDiscuss pagingCustomDiscuss) throws Exception {
        try {
            return discussMapper.selectDiscussCount(pagingCustomDiscuss);
        } catch (Exception e) {
            throw new Exception("查询评论总数时出错");
        }
    }

    public List<Discuss> selectDiscuss(PagingCustomDiscuss pagingCustomDiscuss) throws Exception {
        try {
            List<Discuss> discusses = discussMapper.selectDiscuss(pagingCustomDiscuss);
//            if (discusses.isEmpty()) throw new Exception("查询到的评论列表为空");
            //对结果集进行过滤
            if (!discusses.isEmpty()) {
                for (Discuss discuss :
                        discusses) {
                    discuss = (Discuss) Filter.filterObject(discuss);
                }
            }
            return discusses;
        } catch (Exception e) {
            if (!e.getMessage().contains("评论列表为空"))
                throw new Exception("参数查询评论列表出错，请检查参数");
            throw e;
        }
    }

    @Transactional(rollbackFor = Exception.class)
    public void updateDiscussByPrimaryKeySelective(Discuss discuss) throws Exception {
        try {
            discuss = (Discuss) Filter.filterObject(discuss);
            except(discussMapper.updateDiscussByPrimaryKeySelective(discuss));
        } catch (Exception e) {
            if (!e.getMessage().contains("操作无效"))
                throw new Exception("修改评论信息时出错");
            throw e;
        }
    }

    @Override
    public String selectUserFaceImage(String userEmail) throws Exception {
        return userMapper.selectUserFaceImage(userEmail);
    }

}
