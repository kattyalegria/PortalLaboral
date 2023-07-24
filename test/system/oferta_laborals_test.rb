require "application_system_test_case"

class OfertaLaboralsTest < ApplicationSystemTestCase
  setup do
    @oferta_laboral = oferta_laborals(:one)
  end

  test "visiting the index" do
    visit oferta_laborals_url
    assert_selector "h1", text: "Oferta laborals"
  end

  test "should create oferta laboral" do
    visit oferta_laborals_url
    click_on "New oferta laboral"

    fill_in "Description", with: @oferta_laboral.description
    fill_in "Name", with: @oferta_laboral.name
    click_on "Create Oferta laboral"

    assert_text "Oferta laboral was successfully created"
    click_on "Back"
  end

  test "should update Oferta laboral" do
    visit oferta_laboral_url(@oferta_laboral)
    click_on "Edit this oferta laboral", match: :first

    fill_in "Description", with: @oferta_laboral.description
    fill_in "Name", with: @oferta_laboral.name
    click_on "Update Oferta laboral"

    assert_text "Oferta laboral was successfully updated"
    click_on "Back"
  end

  test "should destroy Oferta laboral" do
    visit oferta_laboral_url(@oferta_laboral)
    click_on "Destroy this oferta laboral", match: :first

    assert_text "Oferta laboral was successfully destroyed"
  end
end
