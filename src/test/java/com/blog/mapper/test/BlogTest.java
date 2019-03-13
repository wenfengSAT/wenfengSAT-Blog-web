package com.blog.mapper.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.generator.logging.Log;
import org.mybatis.generator.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.blog.mapper.BlogMapper;
import com.blog.mapper.BlogTypeMapper;
import com.blog.model.Blog;
import com.blog.model.BlogType;
import com.blog.service.BlogService;
import com.blog.service.VisitService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath:spring/applicationContext-*.xml"})
// @Ignore
public class BlogTest {
  private Log log = LogFactory.getLog(BlogTest.class);

  @Autowired
  private BlogService blogService;
  @Autowired
  private VisitService visitService;
  @Autowired
  private BlogTypeMapper blogTypeMapper;
  @Autowired
  private BlogMapper blogMapper;

  @Test
  public void selectByExample() {
    // 意思是从第1页开始，每页显示3条记录

    Map map = new HashMap();
    map.put("ip", "7");
    // map.put("addTime", "2018-03-28");
    // map.put(key, value)
    PageHelper.startPage(1, 3);
    List<?> blogList = visitService.selectLikeVisitListGroupByIp(map);
    // 分页的信息
    PageInfo p = new PageInfo(blogList);
    for (Object map2 : blogList) {
      System.out.println(map2);
    }
    System.out.println(p);
    /*
     * List<Map> list=blogMapper.selectBlogListByDate(); for(Map map1:list){
     * System.out.println(map1); }
     */


  }

  @Test
  public void subString() {
    Map map = new HashMap();
    // map.put("typeName", "数");
    List<BlogType> typeList = blogTypeMapper.selectBlogTypeListByPage(map);
    for (BlogType type : typeList) {
      System.out.println(type);
    }
    /*
     * BlogType type=blogTypeMapper.selectBlogTypeById(3); System.out.println(type);
     */
  }

  @Test
  public void deleteBlog() throws Exception {

  }

  @SuppressWarnings("unchecked")
  @Test
  public void BlogIdToSafe() {
    /*
     * Map map=new HashMap(); map.put("format", "day"); map.put("startTime", "2018-05-01");
     * map.put("endTime", "2018-05-03"); List<Map> blogList=visitService.selectVisitListByDate(map);
     */
    // Map map1=new HashMap();
    /*
     * for (Map map2 : blogList) { Object time=map2.get("time"); map1.put(time,map2.get("count")); }
     */
    // System.out.println(blogList);
  }

  @Test
  public void test1() throws InterruptedException {
    long start=System.currentTimeMillis();
    for (int i = 0; i < 10; i++) {
      new Thread(""+i){
        public void run() {
          Blog blog=selectBlogById(95);
          System.out.println(Thread.currentThread().getName()+"-"+ blog.getTitle());
        }
      }.start();
      Thread.sleep(1000);
    }
   /* while(Thread.activeCount()>1)  //保证前面的线程都执行完
      Thread.yield();*/
    long end=System.currentTimeMillis();
    System.out.println((end-start)+"ms");
    
    /*System.out.println(Thread.currentThread().getName());
    Map map=new HashMap();
    for (int i = 0; i < 10; i++) {
      new Thread("" + i) {
        public void run() {
          Blog blog = blogService.selectBlogById(95);
          System.out.println(getName() + "-" + blog.getTitle());
          List<BlogType> typeList = blogTypeMapper.selectBlogTypeListByPage(map);
          for (BlogType type : typeList) {
            System.out.println(type);
          }
        }
      }.start();
    }*/
  }
  
  private Blog selectBlogById(Integer id){
    Blog blog=null;
    if(id!=0){
       blog = blogService.selectBlogById(95);
    }
    return blog;
  }
}
