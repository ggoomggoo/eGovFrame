package egovframework.lab.web.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter @Getter
public class LoginCommand {

	// TODO [Step 1-2-3] LoginCommand.java 완성하기
	private String id;
	private String password;
	private String loginType;

}