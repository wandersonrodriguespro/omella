defmodule PopulateDBScript.District do
  use Ecto.Schema
  import Ecto.Changeset

  schema "district" do
    field :agency_name, :string
    field :state_name_latest_available_year, :string
    field :total_number_of_public_schools_2023_24, :string
    field :total_number_operational_charter_schools_2023_24, :string
    field :total_number_operational_schools_2023_24, :string
    field :web_site_url_2023_24, :string
    field :ansi_fips_state_code_latest_available_year, :string
    field :agency_id_nces_assigned_latest_available_year, :string
    field :agency_name_2023_24, :string
    field :state_abbr_latest_available_year, :string
    field :state_name_2023_24, :string
    field :location_address_1_2023_24, :string
    field :location_address_2_2023_24, :string
    field :location_address_3_2023_24, :string
    field :location_city_2023_24, :string
    field :location_state_abbr_2023_24, :string
    field :location_zip_2023_24, :string
    field :location_zip4_2023_24, :string
    field :mailing_address_1_2023_24, :string
    field :mailing_address_2_2023_24, :string
    field :mailing_address_3_2023_24, :string
    field :mailing_city_2023_24, :string
    field :mailing_state_abbr_2023_24, :string
    field :mailing_zip_2023_24, :string
    field :mailing_zip4_2023_24, :string
    field :phone_number_2023_24, :string
    field :agency_type_2023_24, :string
    field :start_of_year_status_2023_24, :string
    field :updated_status_2023_24, :string
    field :effective_date_of_updated_status_2023_24, :string
    field :state_agency_id_2023_24, :string
    field :supervisory_union_id_number_2023_24, :string
    field :lea_charter_status_2023_24, :string
    field :agency_level_sy_2017_18_onward_2023_24, :string
    field :lowest_grade_offered_2023_24, :string
    field :highest_grade_offered_2023_24, :string
    field :prekindergarten_offered_2023_24, :string
    field :kindergarten_offered_2023_24, :string
    field :total_students_all_grades_excludes_ae_2023_24, :string
    field :total_students_all_grades_includes_ae_2023_24, :string
    field :grades_1_8_students_2023_24, :string
    field :grades_9_12_students_2023_24, :string
    field :prekindergarten_students_2023_24, :string
    field :kindergarten_students_2023_24, :string
    field :male_students_2023_24, :string
    field :female_students_2023_24, :string
    field :full_time_equivalent_fte_teachers_2023_24, :string
    field :pupil_teacher_ratio_2023_24, :string
    field :prekindergarten_teachers_2023_24, :string
    field :kindergarten_teachers_2023_24, :string
    field :elementary_teachers_2023_24, :string
    field :secondary_teachers_2023_24, :string
    field :ungraded_teachers_2023_24, :string
    field :total_staff_2023_24, :string
    field :paraprofessionals_instructional_aides_2023_24, :string
    field :instructional_coordinators_2023_24, :string
    field :elementary_school_counselor_2023_24, :string
    field :secondary_school_counselor_2023_24, :string
    field :other_guidance_counselors_2023_24, :string
    field :total_guidance_counselors_2023_24, :string
    field :librarians_media_specialists_2023_24, :string
    field :media_support_staff_2023_24, :string
    field :lea_administrators_2023_24, :string
    field :lea_administrative_support_staff_2023_24, :string
    field :school_administrators_2023_24, :string
    field :school_administrative_support_staff_2023_24, :string
    field :student_support_services_staff_w_o_psychology_2023_24, :string
    field :school_psychologist_2023_24, :string
    field :other_support_services_staff_2023_24, :string
end

  @doc false
  def changeset(district, attrs) do
    district
    |> cast(attrs, [
      :agency_name,
      :state_name_latest_available_year,
      :total_number_of_public_schools_2023_24,
      :total_number_operational_charter_schools_2023_24,
      :total_number_operational_schools_2023_24,
      :web_site_url_2023_24,
      :ansi_fips_state_code_latest_available_year,
      :agency_id_nces_assigned_latest_available_year,
      :agency_name_2023_24,
      :state_abbr_latest_available_year,
      :state_name_2023_24,
      :location_address_1_2023_24,
      :location_address_2_2023_24,
      :location_address_3_2023_24,
      :location_city_2023_24,
      :location_state_abbr_2023_24,
      :location_zip_2023_24,
      :location_zip4_2023_24,
      :mailing_address_1_2023_24,
      :mailing_address_2_2023_24,
      :mailing_address_3_2023_24,
      :mailing_city_2023_24,
      :mailing_state_abbr_2023_24,
      :mailing_zip_2023_24,
      :mailing_zip4_2023_24,
      :phone_number_2023_24,
      :agency_type_2023_24,
      :start_of_year_status_2023_24,
      :updated_status_2023_24,
      :effective_date_of_updated_status_2023_24,
      :state_agency_id_2023_24,
      :supervisory_union_id_number_2023_24,
      :lea_charter_status_2023_24,
      :agency_level_sy_2017_18_onward_2023_24,
      :lowest_grade_offered_2023_24,
      :highest_grade_offered_2023_24,
      :prekindergarten_offered_2023_24,
      :kindergarten_offered_2023_24,
      :total_students_all_grades_excludes_ae_2023_24,
      :total_students_all_grades_includes_ae_2023_24,
      :grades_1_8_students_2023_24,
      :grades_9_12_students_2023_24,
      :prekindergarten_students_2023_24,
      :kindergarten_students_2023_24,
      :male_students_2023_24,
      :female_students_2023_24,
      :full_time_equivalent_fte_teachers_2023_24,
      :pupil_teacher_ratio_2023_24,
      :prekindergarten_teachers_2023_24,
      :kindergarten_teachers_2023_24,
      :elementary_teachers_2023_24,
      :secondary_teachers_2023_24,
      :ungraded_teachers_2023_24,
      :total_staff_2023_24,
      :paraprofessionals_instructional_aides_2023_24,
      :instructional_coordinators_2023_24,
      :elementary_school_counselor_2023_24,
      :secondary_school_counselor_2023_24,
      :other_guidance_counselors_2023_24,
      :total_guidance_counselors_2023_24,
      :librarians_media_specialists_2023_24,
      :media_support_staff_2023_24,
      :lea_administrators_2023_24,
      :lea_administrative_support_staff_2023_24,
      :school_administrators_2023_24,
      :school_administrative_support_staff_2023_24,
      :student_support_services_staff_w_o_psychology_2023_24,
      :school_psychologist_2023_24,
      :other_support_services_staff_2023_24,
    ])
  end
end
