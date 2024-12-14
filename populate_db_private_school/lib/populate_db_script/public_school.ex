defmodule PopulateDBScript.PublicSchool do
  use Ecto.Schema
  import Ecto.Changeset

  schema "public_school" do
    field :school_name, :string
    field :state_name_public_school_latest_available_year, :string
    field :state_name_public_school_2023_24, :string
    field :state_abbr_public_school_latest_available_year, :string
    field :school_name_public_school_2023_24, :string
    field :school_id_nces_assigned_public_school_latest_available_year, :string
    field :agency_name_public_school_2023_24, :string
    field :agency_id_nces_assigned_public_school_latest_available_year, :string
    field :ansi_fips_state_code_public_school_latest_available_year, :string
    field :web_site_url_public_school_2023_24, :string
    field :location_address_1_public_school_2023_24, :string
    field :location_address_2_public_school_2023_24, :string
    field :location_address_3_public_school_2023_24, :string
    field :location_city_public_school_2023_24, :string
    field :location_state_abbr_public_school_2023_24, :string
    field :location_zip_public_school_2023_24, :string
    field :location_zip4_public_school_2023_24, :string
    field :mailing_address_1_public_school_2023_24, :string
    field :mailing_address_2_public_school_2023_24, :string
    field :mailing_address_3_public_school_2023_24, :string
    field :mailing_city_public_school_2023_24, :string
    field :mailing_state_abbr_public_school_2023_24, :string
    field :mailing_zip_public_school_2023_24, :string
    field :mailing_zip4_public_school_2023_24, :string
    field :phone_number_public_school_2023_24, :string
    field :out_of_state_flag_public_school_2023_24, :string
    field :school_type_public_school_2023_24, :string
    field :agency_type_district_2023_24, :string
    field :start_of_year_status_public_school_2023_24, :string
    field :updated_status_public_school_2023_24, :string
    field :effective_date_of_updated_status_public_school_2023_24, :string
    field :charter_school_public_school_2023_24, :string
    field :shared_time_school_public_school_2023_24, :string
    field :state_school_id_public_school_2023_24, :string
    field :state_agency_id_public_school_2023_24, :string
    field :reconstituted_flag_public_school_2023_24, :string
    field :virtual_school_status_sy_2016_17_onward_public_school_2023_24, :string
    field :national_school_lunch_program_public_school_2023_24, :string
    field :charter_authorizer_state_id_primary_public_school_2023_24, :string
    field :charter_authorizer_name_primary_public_school_2023_24, :string
    field :charter_authorizer_state_id_secondary_public_school_2023_24, :string
    field :charter_authorizer_name_secondary_public_school_2023_24, :string
    field :supervisory_union_id_number_public_school_2023_24, :string
    field :school_level_sy_2017_18_onward_public_school_2023_24, :string
    field :lowest_grade_offered_public_school_2023_24, :string
    field :highest_grade_offered_public_school_2023_24, :string
    field :prekindergarten_offered_public_school_2023_24, :string
    field :kindergarten_offered_public_school_2023_24, :string
    field :total_students_all_grades_excludes_ae_public_school_2023_24, :string
    field :total_students_all_grades_includes_ae_public_school_2023_24, :string
    field :free_lunch_eligible_public_school_2023_24, :string
    field :direct_certification_public_school_2023_24, :string
    field :reduced_price_lunch_eligible_students_public_school_2023_24, :string
    field :free_and_reduced_lunch_students_public_school_2023_24, :string
    field :grades_1_8_students_public_school_2023_24, :string
    field :grades_9_12_students_public_school_2023_24, :string
    field :prekindergarten_students_public_school_2023_24, :string
    field :kindergarten_students_public_school_2023_24, :string
    field :male_students_public_school_2023_24, :string
    field :female_students_public_school_2023_24, :string
    field :full_time_equivalent_fte_teachers_public_school_2023_24, :string
    field :pupil_teacher_ratio_public_school_2023_24, :string
  end

  @doc false
  def changeset(public_school, attrs) do
    public_school
    |> cast(attrs, [
    :school_name,
    :state_name_public_school_latest_available_year,
    :state_name_public_school_2023_24,
    :state_abbr_public_school_latest_available_year,
    :school_name_public_school_2023_24,
    :school_id_nces_assigned_public_school_latest_available_year,
    :agency_name_public_school_2023_24,
    :agency_id_nces_assigned_public_school_latest_available_year,
    :ansi_fips_state_code_public_school_latest_available_year,
    :web_site_url_public_school_2023_24,
    :location_address_1_public_school_2023_24,
    :location_address_2_public_school_2023_24,
    :location_address_3_public_school_2023_24,
    :location_city_public_school_2023_24,
    :location_state_abbr_public_school_2023_24,
    :location_zip_public_school_2023_24,
    :location_zip4_public_school_2023_24,
    :mailing_address_1_public_school_2023_24,
    :mailing_address_2_public_school_2023_24,
    :mailing_address_3_public_school_2023_24,
    :mailing_city_public_school_2023_24,
    :mailing_state_abbr_public_school_2023_24,
    :mailing_zip_public_school_2023_24,
    :mailing_zip4_public_school_2023_24,
    :phone_number_public_school_2023_24,
    :out_of_state_flag_public_school_2023_24,
    :school_type_public_school_2023_24,
    :agency_type_district_2023_24,
    :start_of_year_status_public_school_2023_24,
    :updated_status_public_school_2023_24,
    :effective_date_of_updated_status_public_school_2023_24,
    :charter_school_public_school_2023_24,
    :shared_time_school_public_school_2023_24,
    :state_school_id_public_school_2023_24,
    :state_agency_id_public_school_2023_24,
    :reconstituted_flag_public_school_2023_24,
    :virtual_school_status_sy_2016_17_onward_public_school_2023_24,
    :national_school_lunch_program_public_school_2023_24,
    :charter_authorizer_state_id_primary_public_school_2023_24,
    :charter_authorizer_name_primary_public_school_2023_24,
    :charter_authorizer_state_id_secondary_public_school_2023_24,
    :charter_authorizer_name_secondary_public_school_2023_24,
    :supervisory_union_id_number_public_school_2023_24,
    :school_level_sy_2017_18_onward_public_school_2023_24,
    :lowest_grade_offered_public_school_2023_24,
    :highest_grade_offered_public_school_2023_24,
    :prekindergarten_offered_public_school_2023_24,
    :kindergarten_offered_public_school_2023_24,
    :total_students_all_grades_excludes_ae_public_school_2023_24,
    :total_students_all_grades_includes_ae_public_school_2023_24,
    :free_lunch_eligible_public_school_2023_24,
    :direct_certification_public_school_2023_24,
    :reduced_price_lunch_eligible_students_public_school_2023_24,
    :free_and_reduced_lunch_students_public_school_2023_24,
    :grades_1_8_students_public_school_2023_24,
    :grades_9_12_students_public_school_2023_24,
    :prekindergarten_students_public_school_2023_24,
    :kindergarten_students_public_school_2023_24,
    :male_students_public_school_2023_24,
    :female_students_public_school_2023_24,
    :full_time_equivalent_fte_teachers_public_school_2023_24,
    :pupil_teacher_ratio_public_school_2023_24,
    ])
  end
end
