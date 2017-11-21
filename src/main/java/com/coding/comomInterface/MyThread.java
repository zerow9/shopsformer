package com.coding.comomInterface;

import javax.servlet.http.HttpSession;

public class MyThread extends Thread {

    private HttpSession session;

    @Override
    public void run() {
        long time = System.currentTimeMillis() + 300 * 1000;
        while (true) {
            if (System.currentTimeMillis() > time) {
                session.removeAttribute("emailCode");
                System.out.println("############");
                break;
            }
        }
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }
}
