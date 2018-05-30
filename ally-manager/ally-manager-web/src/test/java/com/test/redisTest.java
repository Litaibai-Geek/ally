package com.test;

import java.util.HashSet;

import org.junit.Test;

import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisCluster;
import redis.clients.jedis.JedisPool;

public class redisTest {
	
	@Test
	public void testJedis() {
		// 连接本地的 Redis 服务
	    Jedis jedis = new Jedis("192.168.100.132",6379);
	    jedis.auth("123456");
	    jedis.set("abac", "123");
	    System.out.println("连接成功:"+jedis.get("abac"));
	    // 查看服务是否运行
	    System.out.println("服务正在运行: " + jedis.ping());
	    jedis.close();
	}
	
	/**
	 * 使用连接池
	 */
	public static void testJedisPool() {
		//创建连接池
		JedisPool jedisPool = new JedisPool("192.168.100.132",7001);
		//从连接池中获取jedis对象
		Jedis jedis = jedisPool.getResource();
		jedis.auth("123456");
		String str = jedis.get("abc");
		System.out.println(str);
		jedis.close();
		jedisPool.close();
	}
	
	/**
	 * 
	 * 集群版测试
	 */
	@Test
	public void testJedisCluster() {
		
		HashSet<HostAndPort> nodes = new HashSet<>();
		
		nodes.add(new HostAndPort("172.168.100.132",7001));
		nodes.add(new HostAndPort("172.168.100.132",7002));
		nodes.add(new HostAndPort("172.168.100.132",7003));
		nodes.add(new HostAndPort("172.168.100.132",7004));
		nodes.add(new HostAndPort("172.168.100.132",7005));
		nodes.add(new HostAndPort("172.168.100.132",7006));
		
		JedisCluster cluster = new JedisCluster(nodes);
		cluster.set("key1", "1000");
		String str = cluster.get("key1");
		System.out.println(str);
		cluster.close();
		
	}
	
	public static void main(String[] args) {
		//测试连接池的
		testJedisPool();
	}
}
