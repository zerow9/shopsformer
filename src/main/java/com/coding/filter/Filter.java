package com.coding.filter;

import com.coding.paging.Paging;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

public class Filter {
    /**
     * 防止SQL注入，对用户输入进行过滤
     *
     * @param pagingCustom   封装了基本查询条件的 Paging 类对象
     * @param strArrayColumn 当前查询表的所字段组
     * @return
     */
    //<!------------------------------------控制排序规则 SQL Injection------------------------------------------->
    public static Paging preventSqlInjection(Paging pagingCustom, String[] strArrayColumn) {

        boolean tmpColumn = false;
        boolean tmpRule = false;
        for (String str : strArrayColumn) {
            if (str.equalsIgnoreCase(pagingCustom.getSortByColumn())) {
                tmpColumn = true;
                break;
            }
        }

        if (pagingCustom.getSortRule() != null && (pagingCustom.getSortRule().equalsIgnoreCase("ASC") || pagingCustom.getSortRule().equalsIgnoreCase("DESC"))) {
            tmpRule = true;
        }

        if (!tmpColumn) {
            pagingCustom.setSortByColumn(null);
        }
        if (!tmpRule) {
            pagingCustom.setSortRule(null);
        }
        return pagingCustom;
    }

    //<!------------------------------------数据存储的时候进行过滤------------------------------------------->

    /**
     * 根据反射机制对对象属性进行过滤
     *
     * @param model Object 对象
     * @return 过滤以后的 Object 对象
     * @throws NoSuchMethodException
     * @throws IllegalAccessException
     * @throws IllegalArgumentException
     * @throws InvocationTargetException
     */
    public static Object filterObject(Object model) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Field[] field = model.getClass().getDeclaredFields();        //获取实体类的所有属性，返回Field数组
        for (int j = 0; j < field.length; j++) {     //遍历所有属性
            String name = field[j].getName();    //获取属性的名字

            //System.out.println("attribute name:" + name);
            name = name.substring(0, 1).toUpperCase() + name.substring(1); //将属性的首字符大写，方便构造get，set方法
            String type = field[j].getGenericType().toString();    //获取属性的类型

            if (type.equals("class java.lang.String")) {   //如果type是类类型，则前面包含"class "，后面跟类名
                Method getMethod = model.getClass().getMethod("get" + name);
                String value = (String) getMethod.invoke(model);    //调用getter方法获取属性值
                if (value != null) {

                    Method setMethod = model.getClass().getMethod("set" + name, String.class);
                    setMethod.invoke(model, stripXSS(value));
                }
            }
            /*if(type.equals("class java.lang.Integer")){
                Method m = model.getClass().getMethod("get"+name);
                Integer value = (Integer) m.invoke(model);
                if(value != null){
                    System.out.println("attribute value:"+value);
                }
            }
            if(type.equals("class java.lang.Short")){
                Method m = model.getClass().getMethod("get"+name);
                Short value = (Short) m.invoke(model);
                if(value != null){
                    System.out.println("attribute value:"+value);                    }
            }
            if(type.equals("class java.lang.Double")){
                Method m = model.getClass().getMethod("get"+name);
                Double value = (Double) m.invoke(model);
                if(value != null){
                    System.out.println("attribute value:"+value);

                }
            }
            if(type.equals("class java.lang.Boolean")){
                Method m = model.getClass().getMethod("get"+name);
                Boolean value = (Boolean) m.invoke(model);
                if(value != null){
                    System.out.println("attribute value:"+value);
                }
            }
            if(type.equals("class java.util.Date")){
                Method m = model.getClass().getMethod("get"+name);
                Date value = (Date) m.invoke(model);
                if(value != null){
                    System.out.println("attribute value:"+value.toLocaleString());
                }
            }*/
        }
        return model;
    }

    /**
     * 正则过滤,如果参数不符合规范则替换为''
     *
     * @param value 匹配是否需要过滤的字符串
     * @return 过滤后的字符串
     */
    public static String stripXSS(String value) {
        if (value != null) {
            Pattern scriptPattern = Pattern.compile("<[\r\n| | ]*script[\r\n| | ]*>(.*?)</[\r\n| | ]*script[\r\n| | ]*>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("src[\r\n| | ]*=[\r\n| | ]*[\\\"|\\\'](.*?)[\\\"|\\\']", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("</[\r\n| | ]*script[\r\n| | ]*>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("<[\r\n| | ]*script(.*?)>", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("eval\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("e-xpression\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("javascript[\r\n| | ]*:[\r\n| | ]*", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("<(.*)s(.*)c(.*)r(.*)i(.*)p(.*)t>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("vbscript[\r\n| | ]*:[\r\n| | ]*", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("onload(.*?)=", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("<(no)?script[^>]*>.*?</(no)?script>", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("expression\\((.*?)\\)", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("(javascript:|vbscript:|view-source:)*", Pattern.CASE_INSENSITIVE);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("<(\"[^\"]*\"|\'[^\']*\'|[^\'\">])*>", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("(window\\.location|window\\.|\\.location|document\\.cookie|document\\.|alert\\(.*?\\)|window\\.open\\()*", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
            scriptPattern = Pattern.compile("<+\\s*\\w*\\s*(oncontrolselect|oncopy|oncut|ondataavailable|ondatasetchanged|ondatasetcomplete|ondblclick|ondeactivate|ondrag|ondragend|ondragenter|ondragleave|ondragover|ondragstart|ondrop|onerror=|onerroupdate|onfilterchange|onfinish|onfocus|onfocusin|onfocusout|onhelp|onkeydown|onkeypress|onkeyup|onlayoutcomplete|onload|onlosecapture|onmousedown|onmouseenter|onmouseleave|onmousemove|onmousout|onmouseover|onmouseup|onmousewheel|onmove|onmoveend|onmovestart|onabort|onactivate|onafterprint|onafterupdate|onbefore|onbeforeactivate|onbeforecopy|onbeforecut|onbeforedeactivate|onbeforeeditocus|onbeforepaste|onbeforeprint|onbeforeunload|onbeforeupdate|onblur|onbounce|oncellchange|onchange|onclick|oncontextmenu|onpaste|onpropertychange|onreadystatechange|onreset|onresize|onresizend|onresizestart|onrowenter|onrowexit|onrowsdelete|onrowsinserted|onscroll|onselect|onselectionchange|onselectstart|onstart|onstop|onsubmit|onunload)+\\s*=+", Pattern.CASE_INSENSITIVE | Pattern.MULTILINE | Pattern.DOTALL);
            value = scriptPattern.matcher(value).replaceAll("");
        }
        return value;
    }


}