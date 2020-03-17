package ee.valitit.project.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserExceptionsResponse {

    private int status;
    private String message;
    private long timeStamp;

}