import org.junit.Test;
import redis.clients.jedis.Jedis;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class TestRedis {

    @Test
    public void test(){
        //连接Redis（119.29.219.115为服务器IP地址，6379为redis的端口）
        Jedis jedis = new Jedis("119.29.219.115", 6379);


        //获取所有的key
        Set<String> keys = jedis.keys("*");

        Map<Object,Object> map = new HashMap<>();

        for (String key : keys) {
            //System.out.println(key);
            Object value = jedis.get(key);
            map.put(key,value);
        }
        System.out.println(map);

    }






}
