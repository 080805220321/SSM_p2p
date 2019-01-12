package com.zking.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisClient {

    //连接池
    private static JedisPool jedisPool;
    static{
        try
        {
//            InputStream is=new BufferedInputStream(new FileInputStream("src/com/teriste/resources/JedisPool.properties"));
//            Properties properties=new Properties();
//            properties.load(is);
//            JedisPoolConfig config=new JedisPoolConfig();
//            config.setMaxTotal(Integer.parseInt(properties.getProperty("MAX_TOTAL")));
//            config.setMaxIdle(Integer.parseInt(properties.getProperty("MAX_IDLE")));
//            config.setMaxWaitMillis(Integer.parseInt(properties.getProperty("MAX_WAIT")));
//            config.setTestOnBorrow(Boolean.getBoolean(properties.getProperty("TEST_ON_BORROW")));
//            //这里我的redis数据库没有设置密码所以不需要密码参数，否则可以添加密码参数
//            //jedisPool=new JedisPool(config,ADDR,PORT,TIMEOUT,AUTH);
//            jedisPool=new JedisPool(config,properties.getProperty("ADDR"),Integer.parseInt(properties.getProperty("PORT")),Integer.parseInt(properties.getProperty("TIMEOUT")));

            JedisPoolConfig config = new JedisPoolConfig();
            // 设置最大连接数
            config.setMaxTotal(3000); // 可以创建3000jedis实例 
            // 设置最大空闲连接数
            config.setMaxIdle(300);
            //等待可用连接的最大时间
            config.setMaxWaitMillis(10000);
            //在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的
            config.setTestOnBorrow(true);
            jedisPool = new JedisPool(config,"119.29.219.115",6379);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
    //获取Redis资源
    public synchronized static Jedis getJedis(){
        try
        {
            if (jedisPool!=null)
            {
                Jedis jedis=jedisPool.getResource();
                return jedis;
            }else {
                return null;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return null;
    }

    //释放redis资源
    @SuppressWarnings("deprecation")
    public synchronized static void releaseConn(Jedis jedis){
        if (jedisPool!=null)
        {
            jedisPool.returnResource(jedis);
        }
    }


}
