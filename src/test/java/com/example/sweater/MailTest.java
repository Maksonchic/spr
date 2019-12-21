package com.example.sweater;

import com.example.sweater.service.MailSender;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.assertj.core.api.AssertionsForInterfaceTypes.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MailTest {
    @Autowired
    private MailSender mailSender;

    @Test
    public void test() throws Exception {
        assertThat(mailSender).isNotNull();

        mailSender.send(
                "maksimka-2580@mail.ru",
                "test",
                "If you see it, that you win!))) http://localhost:8080"
        );
    }
}
