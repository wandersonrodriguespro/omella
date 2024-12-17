defmodule PopulateDBScript.PrivateSchool do
  use Ecto.Schema
  import Ecto.Changeset

  schema "private_school" do
    field :private_school_name, :string
    field :state_name_private_school_latest_available_year, :string
    field :state_name_private_school_2019_20, :string
    field :ansi_fips_state_code_private_school_latest_available_year, :string
    field :private_school_name_private_school_2019_20, :string
    field :school_id_nces_assigned_private_school_latest_available_year, :string
    field :county_name_private_school_2019_20, :string
    field :ansi_fips_county_code_private_school_2019_20, :string
    field :days_per_school_year_private_school_2019_20, :string
    field :length_of_school_day_in_total_hours_including_reported_minutes_private_school_2019_20, :string
    field :library_or_library_media_center_private_school_2019_20, :string
    field :phone_number_private_school_2019_20, :string
    field :physical_address_private_school_2019_20, :string
    field :city_private_school_2019_20, :string
    field :state_abbr_private_school_latest_available_year, :string
    field :zip_private_school_2019_20, :string
    field :zip4_private_school_2019_20, :string
    field :zip_4_private_school_2019_20, :string
    field :total_students_ungraded_pk_12_private_school_2019_20, :string
    field :total_students_ungraded_k_12_private_school_2019_20, :string
    field :prekindergarten_and_kindergarten_students_private_school_2019_20, :string
    field :grades_1_8_students_private_school_2019_20, :string
    field :grades_9_12_students_private_school_2019_20, :string
    field :pupil_teacher_ratio_private_school_2019_20, :string
    field :full_time_equivalent_fte_teachers_private_school_2019_20, :string
  end

  @doc false
  def changeset(private_school, attrs) do
    private_school
    |> cast(attrs, [
    :private_school_name,
    :state_name_private_school_latest_available_year,
    :state_name_private_school_2019_20,
    :ansi_fips_state_code_private_school_latest_available_year,
    :private_school_name_private_school_2019_20,
    :school_id_nces_assigned_private_school_latest_available_year,
    :county_name_private_school_2019_20,
    :ansi_fips_county_code_private_school_2019_20,
    :days_per_school_year_private_school_2019_20,
    :length_of_school_day_in_total_hours_including_reported_minutes_private_school_2019_20,
    :library_or_library_media_center_private_school_2019_20,
    :phone_number_private_school_2019_20,
    :physical_address_private_school_2019_20,
    :city_private_school_2019_20,
    :state_abbr_private_school_latest_available_year,
    :zip_private_school_2019_20,
    :zip4_private_school_2019_20,
    :zip_4_private_school_2019_20,
    :total_students_ungraded_pk_12_private_school_2019_20,
    :total_students_ungraded_k_12_private_school_2019_20,
    :prekindergarten_and_kindergarten_students_private_school_2019_20,
    :grades_1_8_students_private_school_2019_20,
    :grades_9_12_students_private_school_2019_20,
    :pupil_teacher_ratio_private_school_2019_20,
    :full_time_equivalent_fte_teachers_private_school_2019_20,
    ])
  end
end
