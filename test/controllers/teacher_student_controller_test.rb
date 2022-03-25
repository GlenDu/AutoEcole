require "test_helper"

class TeacherStudentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teacher_student_new_url
    assert_response :success
  end

  test "should get show" do
    get teacher_student_show_url
    assert_response :success
  end

  test "should get create" do
    get teacher_student_create_url
    assert_response :success
  end
end
