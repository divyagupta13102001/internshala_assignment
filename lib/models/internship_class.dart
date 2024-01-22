class InternshipOpening {
  int? id;
  String? title;
  String? employmentType;
  Map<String, dynamic>? applicationStatusMessage;
  String? jobTitle;
  bool workFromHome;
  String? segment;
  String? segmentLabelValue;
  String? internshipTypeLabelValue;
  List<String>? jobSegments;
  String? companyName;
  String? companyUrl;
  bool? isPremium;
  bool? isPremiumInternship;
  String? employerName;
  String? companyLogo;
  String? type;
  String? url;
  int? isInternChallenge;
  bool? isExternal;
  bool? isActive;
  String? expiresAt;
  String? closedAt;
  String? profileName;
  bool partTime;
  String? startDate;
  String? duration;
  Map<String, dynamic>? stipend;
  dynamic? salary;
  dynamic? jobExperience;
  String? experience;
  String? postedOn;
  int? postedOnDateTime;
  String? applicationDeadline;
  String? expiringIn;
  String? postedByLabel;
  String? postedByLabelType;
  List<String>? locationNames;
  List<Map<String, String>>? locations;
  String? startDateComparisonFormat;
  String? startDate1;
  String? startDate2;
  bool? isPPO;
  bool? isPPOSalaryDisclosed;
  dynamic? ppoSalary;
  dynamic? ppoSalary2;
  String? ppoLabelValue;
  bool? toShowExtraLabel;
  String? extraLabelValue;
  bool? isExtraLabelBlack;
  List<String>? campaignNames;
  String? campaignName;
  bool? toShowInSearch;
  String? campaignUrl;
  dynamic? campaignStartDateTime;
  dynamic? campaignLaunchDateTime;
  dynamic? campaignEarlyAccessStartDateTime;
  dynamic? campaignEndDateTime;
  List<Map<String, List<String>>>? labels;
  String? labelsApp;
  List<String>? labelsAppInCard;
  bool? isCovidWFHSelected;
  bool? toShowCardMessage;
  String? message;
  bool? isApplicationCappingEnabled;
  String? applicationCappingMessage;
  List<dynamic>? overrideMetaDetails;
  bool? eligibleForEasyApply;
  bool? eligibleForB2BApplyNow;
  bool? toShowB2BLabel;
  bool? isInternationalJob;
  bool? toShowCoverLetter;
  String? officeDays;

  InternshipOpening({
    this.id,
    this.title,
    this.employmentType,
    this.applicationStatusMessage,
    this.jobTitle,
    required this.workFromHome,
    this.segment,
    this.segmentLabelValue,
    this.internshipTypeLabelValue,
    this.jobSegments,
    this.companyName,
    this.companyUrl,
    this.isPremium,
    this.isPremiumInternship,
    this.employerName,
    this.companyLogo,
    this.type,
    this.url,
    this.isInternChallenge,
    this.isExternal,
    this.isActive,
    this.expiresAt,
    this.closedAt,
    this.profileName,
    required this.partTime,
    this.startDate,
    this.duration,
    this.stipend,
    this.salary,
    this.jobExperience,
    this.experience,
    this.postedOn,
    this.postedOnDateTime,
    this.applicationDeadline,
    this.expiringIn,
    this.postedByLabel,
    this.postedByLabelType,
    this.locationNames,
    this.locations,
    this.startDateComparisonFormat,
    this.startDate1,
    this.startDate2,
    this.isPPO,
    this.isPPOSalaryDisclosed,
    this.ppoSalary,
    this.ppoSalary2,
    this.ppoLabelValue,
    this.toShowExtraLabel,
    this.extraLabelValue,
    this.isExtraLabelBlack,
    this.campaignNames,
    this.campaignName,
    this.toShowInSearch,
    this.campaignUrl,
    this.campaignStartDateTime,
    this.campaignLaunchDateTime,
    this.campaignEarlyAccessStartDateTime,
    this.campaignEndDateTime,
    this.labels,
    this.labelsApp,
    this.labelsAppInCard,
    this.isCovidWFHSelected,
    this.toShowCardMessage,
    this.message,
    this.isApplicationCappingEnabled,
    this.applicationCappingMessage,
    this.overrideMetaDetails,
    this.eligibleForEasyApply,
    this.eligibleForB2BApplyNow,
    this.toShowB2BLabel,
    this.isInternationalJob,
    this.toShowCoverLetter,
    this.officeDays,
  });

  factory InternshipOpening.fromJson(Map<String, dynamic> json) {
    return InternshipOpening(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      applicationStatusMessage: json['application_status_message'],
      jobTitle: json['job_title'],
      workFromHome: json['work_from_home'],
      segment: json['segment'],
      segmentLabelValue: json['segment_label_value'],
      internshipTypeLabelValue: json['internship_type_label_value'],
      jobSegments: List<String>.from(json['job_segments']),
      companyName: json['company_name'],
      companyUrl: json['company_url'],
      isPremium: json['is_premium'],
      isPremiumInternship: json['is_premium_internship'],
      employerName: json['employer_name'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      isInternChallenge: json['is_internchallenge'],
      isExternal: json['is_external'],
      isActive: json['is_active'],
      expiresAt: json['expires_at'],
      closedAt: json['closed_at'],
      profileName: json['profile_name'],
      partTime: json['part_time'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: json['stipend'],
      salary: json['salary'],
      jobExperience: json['job_experience'],
      experience: json['experience'],
      postedOn: json['posted_on'],
      postedOnDateTime: json['postedOnDateTime'],
      applicationDeadline: json['application_deadline'],
      expiringIn: json['expiring_in'],
      postedByLabel: json['posted_by_label'],
      postedByLabelType: json['posted_by_label_type'],
      locationNames: List<String>.from(json['location_names']),
      // locations: json['locations'] != null
      //     ? List<Map<String, dynamic>>.from(json['locations'].map((x) => x))
      //     : null,
      locations: null,
      startDateComparisonFormat: json['start_date_comparison_format'],
      startDate1: json['start_date1'],
      startDate2: json['start_date2'],
      isPPO: json['is_ppo'],
      isPPOSalaryDisclosed: json['is_ppo_salary_disclosed'],
      ppoSalary: json['ppo_salary'],
      ppoSalary2: json['ppo_salary2'],
      ppoLabelValue: json['ppo_label_value'],
      toShowExtraLabel: json['to_show_extra_label'],
      extraLabelValue: json['extra_label_value'],
      isExtraLabelBlack: json['is_extra_label_black'],
      campaignNames: List<String>.from(json['campaign_names']),
      campaignName: json['campaign_name'],
      toShowInSearch: json['to_show_in_search'],
      campaignUrl: json['campaign_url'],
      campaignStartDateTime: json['campaign_start_date_time'],
      campaignLaunchDateTime: json['campaign_launch_date_time'],
      campaignEarlyAccessStartDateTime:
          json['campaign_early_access_start_date_time'],
      campaignEndDateTime: json['campaign_end_date_time'],
      labels: List<Map<String, List<String>>>.from(json['labels'].map((x) =>
          Map.from(x).map((k, v) =>
              MapEntry<String, List<String>>(k, List<String>.from(v))))),
      labelsApp: json['labels_app'],
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
      isCovidWFHSelected: json['is_covid_wfh_selected'],
      toShowCardMessage: json['to_show_card_message'],
      message: json['message'],
      isApplicationCappingEnabled: json['is_application_capping_enabled'],
      applicationCappingMessage: json['application_capping_message'],
      overrideMetaDetails: List<dynamic>.from(json['override_meta_details']),
      eligibleForEasyApply: json['eligible_for_easy_apply'],
      eligibleForB2BApplyNow: json['eligible_for_b2b_apply_now'],
      toShowB2BLabel: json['to_show_b2b_label'],
      isInternationalJob: json['is_international_job'],
      toShowCoverLetter: json['to_show_cover_letter'],
      officeDays: json['office_days'],
    );
  }
}
