package com.bingo.crud.task;

import java.util.Date;

public class TestTask {

	public void work() {
        System.out.println("定时任务正在执行.... " + new Date().getTime());
    }
}
