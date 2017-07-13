package com.wp.freemarker;


import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws Exception {
        //在普通java项目中使用freemarker
        //1.创建Freemarker配置实例
        Configuration configuration = new Configuration();
        configuration.setDirectoryForTemplateLoading(new File("templates"));

        //2.创建数据模型
        Map root = new HashMap<String,Object>();
        root.put("user","skywp");
        root.put("random",84);

        List list = new ArrayList<Address>();
        list.add(new Address("中国","北京"));
        list.add(new Address("中国","上海"));
        root.put("list1",list);

        //3.加载模板文件
        Template t1 = configuration.getTemplate("a.ftl");

        //4.显示生成的数据，将合并后的数据打印到控制台
        Writer out = new OutputStreamWriter(System.out);
        t1.process(root,out);
        out.flush();
    }
}
