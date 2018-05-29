require "application_system_test_case"

class ParametersTest < ApplicationSystemTestCase
  setup do
    @parameter = parameters(:one)
  end

  test "visiting the index" do
    visit parameters_url
    assert_selector "h1", text: "Parameters"
  end

  test "creating a Parameter" do
    visit parameters_url
    click_on "New Parameter"

    fill_in "Typerequest", with: @parameter.TypeRequest_id
    fill_in "Descripcion", with: @parameter.descripcion
    fill_in "Medio", with: @parameter.medio
    fill_in "Nombre", with: @parameter.nombre
    fill_in "Tiempo Respuesta", with: @parameter.tiempo_respuesta
    click_on "Create Parameter"

    assert_text "Parameter was successfully created"
    click_on "Back"
  end

  test "updating a Parameter" do
    visit parameters_url
    click_on "Edit", match: :first

    fill_in "Typerequest", with: @parameter.TypeRequest_id
    fill_in "Descripcion", with: @parameter.descripcion
    fill_in "Medio", with: @parameter.medio
    fill_in "Nombre", with: @parameter.nombre
    fill_in "Tiempo Respuesta", with: @parameter.tiempo_respuesta
    click_on "Update Parameter"

    assert_text "Parameter was successfully updated"
    click_on "Back"
  end

  test "destroying a Parameter" do
    visit parameters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parameter was successfully destroyed"
  end
end