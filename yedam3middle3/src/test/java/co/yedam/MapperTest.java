package co.yedam;

import java.util.List;

import co.yedam.common.DataSource;
import co.yedam.member.mapper.MemberMapper;

public class MapperTest {
	public static void main(String[] args) {

		MemberMapper mapper = DataSource.getInstance().openSession(true).getMapper(MemberMapper.class);

		}
	}
