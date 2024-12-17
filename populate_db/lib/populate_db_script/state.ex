defmodule PopulateDBScript.State do
  use Ecto.Schema
  import Ecto.Changeset

  schema "state" do
    field :state_name, :string
    field :state_name_2023_24, :string
    field :state_abbr_latest_available_year, :string
    field :ansi_fips_state_code_latest_available_year, :string
    field :web_site_url_2023_24, :string
    field :total_number_of_districts_with_enrollment_2023_24, :string
    field :total_number_operational_school_districts_2023_24, :string
    field :total_number_of_school_districts_2023_24, :string
    field :total_number_operational_schools_2023_24, :string
    field :total_number_operational_charter_schools_2023_24, :string
    field :total_number_of_public_schools_2023_24, :string
    field :state_education_agency_name_2023_24, :string
    field :mailing_address_1_2023_24, :string
    field :mailing_address_2_2023_24, :string
    field :mailing_address_3_2023_24, :string
    field :mailing_city_2023_24, :string
    field :mailing_state_name_2023_24, :string
    field :mailing_zip_2023_24, :string
    field :mailing_zip4_2023_24, :string
    field :phone_number_2023_24, :string
    field :total_enrollment_exclude_ae_for_sy_2014_15_onward_2023_24, :string
    field :total_enrollment_include_ae_for_sy_2014_15_onward_2023_24, :string
    field :grades_1_8_students_2023_24, :string
    field :grades_9_12_students_2023_24, :string
    field :prekindergarten_students_2023_24, :string
    field :kindergarten_students_2023_24, :string
    field :male_students_2023_24, :string
    field :female_students_2023_24, :string
    field :pupil_teacher_ratio_2023_24, :string
    field :full_time_equivalent_fte_teachers_2023_24, :string
    field :prekindergarten_teachers_2023_24, :string
    field :kindergarten_teachers_2023_24, :string
    field :elementary_teachers_2023_24, :string
    field :secondary_teachers_2023_24, :string
    field :ungraded_teachers_2023_24, :string
    field :full_time_equivalent_fte_staff_2023_24, :string
    field :paraprofessionals_instructional_aides_2023_24, :string
    field :instructional_coordinators_2023_24, :string
    field :elementary_school_counselor_2023_24, :string
    field :secondary_school_counselor_2023_24, :string
    field :other_guidance_counselors_2023_24, :string
    field :guidance_counselors_2023_24, :string
    field :librarians_media_specialists_2023_24, :string
    field :media_support_staff_2023_24, :string
    field :lea_administrators_2023_24, :string
    field :lea_administrative_support_staff_2023_24, :string
    field :school_administrators_2023_24, :string
    field :school_administrative_support_staff_2023_24, :string
    field :student_support_services_staff_w_o_psychology_2023_24, :string
    field :school_psychologist_2023_24, :string
    field :all_other_support_staff_2023_24, :string
    field :grade_1_students_2023_24, :string
    field :grade_2_students_2023_24, :string
    field :grade_3_students_2023_24, :string
    field :grade_4_students_2023_24, :string
    field :grade_5_students_2023_24, :string
    field :grade_6_students_2023_24, :string
    field :grade_7_students_2023_24, :string
    field :grade_8_students_2023_24, :string
    field :grade_9_students_2023_24, :string
    field :grade_10_students_2023_24, :string
    field :grade_11_students_2023_24, :string
    field :grade_12_students_2023_24, :string
    field :grade_13_students_2023_24, :string
    field :ungraded_students_2023_24, :string
    field :adult_education_students_2023_24, :string

  end

  @doc false
  def changeset(state, attrs) do
    state
    |> cast(attrs, [
      :state_name,
      :state_name_2023_24,
      :state_abbr_latest_available_year,
      :ansi_fips_state_code_latest_available_year,
      :web_site_url_2023_24,
      :total_number_of_districts_with_enrollment_2023_24,
      :total_number_operational_school_districts_2023_24,
      :total_number_of_school_districts_2023_24,
      :total_number_operational_schools_2023_24,
      :total_number_operational_charter_schools_2023_24,
      :total_number_of_public_schools_2023_24,
      :state_education_agency_name_2023_24,
      :mailing_address_1_2023_24,
      :mailing_address_2_2023_24,
      :mailing_address_3_2023_24,
      :mailing_city_2023_24,
      :mailing_state_name_2023_24,
      :mailing_zip_2023_24,
      :mailing_zip4_2023_24,
      :phone_number_2023_24,
      :total_enrollment_exclude_ae_for_sy_2014_15_onward_2023_24,
      :total_enrollment_include_ae_for_sy_2014_15_onward_2023_24,
      :grades_1_8_students_2023_24,
      :grades_9_12_students_2023_24,
      :prekindergarten_students_2023_24,
      :kindergarten_students_2023_24,
      :male_students_2023_24,
      :female_students_2023_24,
      :pupil_teacher_ratio_2023_24,
      :full_time_equivalent_fte_teachers_2023_24,
      :prekindergarten_teachers_2023_24,
      :kindergarten_teachers_2023_24,
      :elementary_teachers_2023_24,
      :secondary_teachers_2023_24,
      :ungraded_teachers_2023_24,
      :full_time_equivalent_fte_staff_2023_24,
      :paraprofessionals_instructional_aides_2023_24,
      :instructional_coordinators_2023_24,
      :elementary_school_counselor_2023_24,
      :secondary_school_counselor_2023_24,
      :other_guidance_counselors_2023_24,
      :guidance_counselors_2023_24,
      :librarians_media_specialists_2023_24,
      :media_support_staff_2023_24,
      :lea_administrators_2023_24,
      :lea_administrative_support_staff_2023_24,
      :school_administrators_2023_24,
      :school_administrative_support_staff_2023_24,
      :student_support_services_staff_w_o_psychology_2023_24,
      :school_psychologist_2023_24,
      :all_other_support_staff_2023_24,
      :grade_1_students_2023_24,
      :grade_2_students_2023_24,
      :grade_3_students_2023_24,
      :grade_4_students_2023_24,
      :grade_5_students_2023_24,
      :grade_6_students_2023_24,
      :grade_7_students_2023_24,
      :grade_8_students_2023_24,
      :grade_9_students_2023_24,
      :grade_10_students_2023_24,
      :grade_11_students_2023_24,
      :grade_12_students_2023_24,
      :grade_13_students_2023_24,
      :ungraded_students_2023_24,
      :adult_education_students_2023_24
    ])
  end
end
