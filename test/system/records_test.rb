require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Accident Fracture", with: @record.accident_fracture
    fill_in "Accident Where", with: @record.accident_where
    fill_in "Blood Pressure", with: @record.blood_pressure
    fill_in "Bone Disease", with: @record.bone_disease
    fill_in "Cream Allergy", with: @record.cream_allergy
    fill_in "Diabetes", with: @record.diabetes
    fill_in "Faint Seizure", with: @record.faint_seizure
    fill_in "Medicine", with: @record.medicine
    fill_in "Medicine Which", with: @record.medicine_which
    fill_in "Pains", with: @record.pains
    fill_in "Surgery", with: @record.surgery
    fill_in "Surgery Where", with: @record.surgery_where
    fill_in "Uses Pacemaker", with: @record.uses_pacemaker
    fill_in "Woman Contraceptive", with: @record.woman_contraceptive
    fill_in "Woman Pregnant", with: @record.woman_pregnant
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Accident Fracture", with: @record.accident_fracture
    fill_in "Accident Where", with: @record.accident_where
    fill_in "Blood Pressure", with: @record.blood_pressure
    fill_in "Bone Disease", with: @record.bone_disease
    fill_in "Cream Allergy", with: @record.cream_allergy
    fill_in "Diabetes", with: @record.diabetes
    fill_in "Faint Seizure", with: @record.faint_seizure
    fill_in "Medicine", with: @record.medicine
    fill_in "Medicine Which", with: @record.medicine_which
    fill_in "Pains", with: @record.pains
    fill_in "Surgery", with: @record.surgery
    fill_in "Surgery Where", with: @record.surgery_where
    fill_in "Uses Pacemaker", with: @record.uses_pacemaker
    fill_in "Woman Contraceptive", with: @record.woman_contraceptive
    fill_in "Woman Pregnant", with: @record.woman_pregnant
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
