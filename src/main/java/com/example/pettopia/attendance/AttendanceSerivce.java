package com.example.pettopia.attendance;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pettopia.vo.Attendance;

@Service
public class AttendanceSerivce {
	@Autowired AttendanceMapper attendanceMapper;

	// 오자윤 : /employee/attendance 페이지네이션 카운트
	public int countAttendance(Map<String, Object> params) {
	    return attendanceMapper.countAttendance(params);
	}
	
	// 오자윤 : /employee/attendanceList 근태상태 조회
	public List<Map<String, Object>> selectAttendance(Map<String, Object> params) {
		return attendanceMapper.selectAttendanceList(params);
	}
	
	// 오자윤 : /employee/attendanceList 근태상태 카운트
	public Map<String, Object> countEmployeeStatus(Attendance attendance) {
		return attendanceMapper.countEmployeeStatus(attendance);
	}
	
	// 오자윤 : /employee/attendanceOn & Off 근태기록 조회
	public List<Attendance> getAttendance(Attendance attendance) {
		return attendanceMapper.getAttendanceList(attendance);
	}
	
	// 오자윤 : /employee/attendanceOn 근태 : 출근
	public Integer attendanceOn(Attendance attendance) {
		return attendanceMapper.insertAttendanceOn(attendance);
	}
	// 오자윤 : /employee/attendanceOff 근태 : 퇴근
	public Integer attendanceOff(Attendance attendance) {
		return attendanceMapper.insertAttendanceOff(attendance);
	}
}
