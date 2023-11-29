package nextstep.courses.domain;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.assertj.core.api.Assertions.assertThat;

public class SessionTest {

    @Test
    @DisplayName("강의는 시작일과 종료일을 가진다.")
    void 강의는_시작일과_종료일을_가진다() {
        LocalDateTime startDate = LocalDateTime.of(2023, 11, 29, 9, 30);
        LocalDateTime endDate = LocalDateTime.of(2023, 12, 29, 18, 30);

        Session session = new Session(startDate, endDate);

        assertThat(session.getStartDate()).isBefore(endDate);
    }
}
