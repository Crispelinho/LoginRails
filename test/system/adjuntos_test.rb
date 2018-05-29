require "application_system_test_case"

class AdjuntosTest < ApplicationSystemTestCase
  setup do
    @adjunto = adjuntos(:one)
  end

  test "visiting the index" do
    visit adjuntos_url
    assert_selector "h1", text: "Adjuntos"
  end

  test "creating a Adjunto" do
    visit adjuntos_url
    click_on "New Adjunto"

    fill_in "Descripcion", with: @adjunto.descripcion
    fill_in "Nombre", with: @adjunto.nombre
    fill_in "Request", with: @adjunto.request_id
    click_on "Create Adjunto"

    assert_text "Adjunto was successfully created"
    click_on "Back"
  end

  test "updating a Adjunto" do
    visit adjuntos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @adjunto.descripcion
    fill_in "Nombre", with: @adjunto.nombre
    fill_in "Request", with: @adjunto.request_id
    click_on "Update Adjunto"

    assert_text "Adjunto was successfully updated"
    click_on "Back"
  end

  test "destroying a Adjunto" do
    visit adjuntos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adjunto was successfully destroyed"
  end
end
