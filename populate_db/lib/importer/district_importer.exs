defmodule PopulateDBScript.Seeds do
  alias PopulateDBScript.Repo
  alias PopulateDBScript.District

  def run do
    "./csv_file/district.csv"
    |> File.stream!()
    |> CSV.decode!(headers: true)
    |> Enum.each(&import_row/1)
  end

  defp import_row(row) do
  
     %District{
      agency_name: row["Agency Name"],
      state_name_latest_available_year: row["State Name [District] Latest available year"],
      total_number_of_public_schools_2023_24: row["Total Number of Public Schools [Public School] 2023-24"],
      total_number_operational_charter_schools_2023_24: row["Total Number Operational Charter Schools [Public School] 2023-24"],
      total_number_operational_schools_2023_24: row["Total Number Operational Schools [Public School] 2023-24"],
      web_site_url_2023_24: row["Web Site URL [District] 2023-24"],
      ansi_fips_state_code_latest_available_year: row["ANSI/FIPS State Code [District] Latest available year"],
      agency_id_nces_assigned_latest_available_year: row["Agency ID - NCES Assigned [District] Latest available year"],
      agency_name_2023_24: row["Agency Name [District] 2023-24"],
      state_abbr_latest_available_year: row["State Abbr [District] Latest available year"],
      state_name_2023_24: row["State Name [District] 2023-24"],
      location_address_1_2023_24: row["Location Address 1 [District] 2023-24"],
      location_address_2_2023_24: row["Location Address 2 [District] 2023-24"],
      location_address_3_2023_24: row["Location Address 3 [District] 2023-24"],
      location_city_2023_24: row["Location City [District] 2023-24"],
      location_state_abbr_2023_24: row["Location State Abbr [District] 2023-24"],
      location_zip_2023_24: row["Location ZIP [District] 2023-24"],
      location_zip4_2023_24: row["Location ZIP4 [District] 2023-24"],
      mailing_address_1_2023_24: row["Mailing Address 1 [District] 2023-24"],
      mailing_address_2_2023_24: row["Mailing Address 2 [District] 2023-24"],
      mailing_address_3_2023_24: row["Mailing Address 3 [District] 2023-24"],
      mailing_city_2023_24: row["Mailing City [District] 2023-24"],
      mailing_state_abbr_2023_24: row["Mailing State Abbr [District] 2023-24"],
      mailing_zip_2023_24: row["Mailing ZIP [District] 2023-24"],
      mailing_zip4_2023_24: row["Mailing ZIP4 [District] 2023-24"],
      phone_number_2023_24: row["Phone Number [District] 2023-24"],
      agency_type_2023_24: row["Agency Type [District] 2023-24"],
      start_of_year_status_2023_24: row["Start of Year Status [District] 2023-24"],
      updated_status_2023_24: row["Updated Status [District] 2023-24"],
      effective_date_of_updated_status_2023_24: row["Effective Date of Updated Status [District] 2023-24"],
      state_agency_id_2023_24: row["State Agency ID [District] 2023-24"],
      supervisory_union_id_number_2023_24: row["Supervisory Union (ID) Number [District] 2023-24"],
      lea_charter_status_2023_24: row["LEA Charter Status [District] 2023-24"],
      agency_level_sy_2017_18_onward_2023_24: row["Agency Level (SY 2017-18 onward) [District] 2023-24"],
      lowest_grade_offered_2023_24: row["Lowest Grade Offered [District] 2023-24"],
      highest_grade_offered_2023_24: row["Highest Grade Offered [District] 2023-24"],
      prekindergarten_offered_2023_24: row["Prekindergarten Offered [District] 2023-24"],
      kindergarten_offered_2023_24: row["Kindergarten Offered [District] 2023-24"],
      total_students_all_grades_excludes_ae_2023_24: row["Total Students All Grades (Excludes AE) [District] 2023-24"],
      total_students_all_grades_includes_ae_2023_24: row["Total Students All Grades (Includes AE) [District] 2023-24"],
      grades_1_8_students_2023_24: row["Grades 1-8 Students [District] 2023-24"],
      grades_9_12_students_2023_24: row["Grades 9-12 Students [District] 2023-24"],
      prekindergarten_students_2023_24: row["Prekindergarten Students [District] 2023-24"],
      kindergarten_students_2023_24: row["Kindergarten Students [District] 2023-24"],
      male_students_2023_24: row["Male Students [District] 2023-24"],
      female_students_2023_24: row["Female Students [District] 2023-24"],
      full_time_equivalent_fte_teachers_2023_24: row["Full-Time Equivalent (FTE) Teachers [District] 2023-24"],
      pupil_teacher_ratio_2023_24: row["Pupil/Teacher Ratio [District] 2023-24"],
      prekindergarten_teachers_2023_24: row["Prekindergarten Teachers [District] 2023-24"],
      kindergarten_teachers_2023_24: row["Kindergarten Teachers [District] 2023-24"],
      elementary_teachers_2023_24: row["Elementary Teachers [District] 2023-24"],
      secondary_teachers_2023_24: row["Secondary Teachers [District] 2023-24"],
      ungraded_teachers_2023_24: row["Ungraded Teachers [District] 2023-24"],
      total_staff_2023_24: row["Total Staff [District] 2023-24"],
      paraprofessionals_instructional_aides_2023_24: row["Paraprofessionals/Instructional Aides [District] 2023-24"],
      instructional_coordinators_2023_24: row["Instructional Coordinators [District] 2023-24"],
      elementary_school_counselor_2023_24: row["Elementary School Counselor [District] 2023-24"],
      secondary_school_counselor_2023_24: row["Secondary School Counselor [District] 2023-24"],
      other_guidance_counselors_2023_24: row["Other Guidance Counselors [District] 2023-24"],
      total_guidance_counselors_2023_24: row["Total Guidance Counselors [District] 2023-24"],
      librarians_media_specialists_2023_24: row["Librarians/media specialists [District] 2023-24"],
      media_support_staff_2023_24: row["Media Support Staff [District] 2023-24"],
      lea_administrators_2023_24: row["LEA Administrators [District] 2023-24"],
      lea_administrative_support_staff_2023_24: row["LEA Administrative Support Staff [District] 2023-24"],
      school_administrators_2023_24: row["School Administrators [District] 2023-24"],
      school_administrative_support_staff_2023_24: row["School Administrative Support Staff [District] 2023-24"],
      student_support_services_staff_w_o_psychology_2023_24: row["Student Support Services Staff (w/o Psychology) [District] 2023-24"],
      school_psychologist_2023_24: row["School Psychologist [District] 2023-24"],
      other_support_services_staff_2023_24: row["Other Support Services Staff [District] 2023-24"],
    }
    |> Repo.insert!()
  end
end

PopulateDBScript.Seeds.run()
