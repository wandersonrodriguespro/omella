defmodule PopulateDBScript.Seeds do
  alias PopulateDBScript.Repo
  alias PopulateDBScript.PrivateSchool

  def run do
    "./csv_file/private_school.csv"
    |> File.stream!()
    |> CSV.decode!(headers: true, strip_fields: true)
    |> Enum.each(fn row ->
      # Remove the BOM from the header
      row = Enum.map(row, fn {key, value} -> 
        clean_key = String.trim_leading(key, "\uFEFF")
        {clean_key, value}
      end) |> Enum.into(%{})

      # Try specifically accessing "Private School Name"
      private_school_name = row["Private School Name"]

      %PrivateSchool{
        private_school_name: private_school_name,
        state_name_private_school_latest_available_year: row["State Name [Private School] Latest available year"],
        state_name_private_school_2019_20: row["State Name [Private School] 2019-20"],
        ansi_fips_state_code_private_school_latest_available_year: row["ANSI/FIPS State Code [Private School] Latest available year"],
        private_school_name_private_school_2019_20: row["Private School Name [Private School] 2019-20"],
        school_id_nces_assigned_private_school_latest_available_year: row["School ID - NCES Assigned [Private School] Latest available year"],
        county_name_private_school_2019_20: row["County Name [Private School] 2019-20"],
        ansi_fips_county_code_private_school_2019_20: row["ANSI/FIPS County Code [Private School] 2019-20"],
        days_per_school_year_private_school_2019_20: row["Days per School Year [Private School] 2019-20"],
        length_of_school_day_in_total_hours_including_reported_minutes_private_school_2019_20: row["Length of School Day in Total Hours (Including reported minutes) [Private School] 2019-20"],
        library_or_library_media_center_private_school_2019_20: row["Library or Library Media Center [Private School] 2019-20"],
        phone_number_private_school_2019_20: row["Phone Number [Private School] 2019-20"],
        physical_address_private_school_2019_20: row["Physical Address [Private School] 2019-20"],
        city_private_school_2019_20: row["City [Private School] 2019-20"],
        state_abbr_private_school_latest_available_year: row["State Abbr [Private School] Latest available year"],
        zip_private_school_2019_20: row["ZIP [Private School] 2019-20"],
        zip4_private_school_2019_20: row["ZIP4 [Private School] 2019-20"],
        zip_4_private_school_2019_20: row["ZIP + 4 [Private School] 2019-20"],
        total_students_ungraded_pk_12_private_school_2019_20: row["Total Students (Ungraded & PK-12) [Private School] 2019-20"],
        total_students_ungraded_k_12_private_school_2019_20: row["Total Students (Ungraded & K-12) [Private School] 2019-20"],
        prekindergarten_and_kindergarten_students_private_school_2019_20: row["Prekindergarten and Kindergarten Students [Private School] 2019-20"],
        grades_1_8_students_private_school_2019_20: row["Grades 1-8 Students [Private School] 2019-20"],
        grades_9_12_students_private_school_2019_20: row["Grades 9-12 Students [Private School] 2019-20"],
        pupil_teacher_ratio_private_school_2019_20: row["Pupil/Teacher Ratio [Private School] 2019-20"],
        full_time_equivalent_fte_teachers_private_school_2019_20: row["Full-Time Equivalent (FTE) Teachers [Private School] 2019-20"],
      }
      |> PrivateSchool.changeset(row)
      |> Repo.insert!()
    end)
  end
end

PopulateDBScript.Seeds.run()
