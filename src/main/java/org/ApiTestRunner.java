package org;

import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("src/test/features/users.feature");
    }
}
