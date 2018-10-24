require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { accident_fracture: @record.accident_fracture, accident_where: @record.accident_where, blood_pressure: @record.blood_pressure, bone_disease: @record.bone_disease, cream_allergy: @record.cream_allergy, diabetes: @record.diabetes, faint_seizure: @record.faint_seizure, medicine: @record.medicine, medicine_which: @record.medicine_which, pains: @record.pains, surgery: @record.surgery, surgery_where: @record.surgery_where, uses_pacemaker: @record.uses_pacemaker, woman_contraceptive: @record.woman_contraceptive, woman_pregnant: @record.woman_pregnant } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { accident_fracture: @record.accident_fracture, accident_where: @record.accident_where, blood_pressure: @record.blood_pressure, bone_disease: @record.bone_disease, cream_allergy: @record.cream_allergy, diabetes: @record.diabetes, faint_seizure: @record.faint_seizure, medicine: @record.medicine, medicine_which: @record.medicine_which, pains: @record.pains, surgery: @record.surgery, surgery_where: @record.surgery_where, uses_pacemaker: @record.uses_pacemaker, woman_contraceptive: @record.woman_contraceptive, woman_pregnant: @record.woman_pregnant } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
