package org.eafit.parabank;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    Karate test01_ParabankLogin() {
        return Karate.run("login")
                .relativeTo(getClass())
                .outputCucumberJson(true);
    }

 @Karate.Test
    Karate test01_Parabanktransfer() {
        return Karate.run("transfer")
                .relativeTo(getClass())
                .outputCucumberJson(true);
    }
 @Karate.Test
    Karate test03_Parabankpay() {
        return Karate.run("PayBill")
                .relativeTo(getClass())
                .outputCucumberJson(true);
    }
}
