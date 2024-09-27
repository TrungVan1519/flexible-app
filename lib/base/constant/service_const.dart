class AuthenticateAction {
  static const EncryptAccountSSOForSmartOffice =
      "/Authenticate/EncryptAccountSSOForSmartOffice";
  static const syncFavouriteList = "/Authenticate/SyncFavouriteList";
  static const changePass = "/Authenticate/changePass";
  static const checkLockAccountSSO = "/Authenticate/checkLockAccountSSO";
  static const getRsaKeyPublic = "/Authenticate/getRsaKeyPublic";
  static const login = "/Authentication/Login";
  static const getPrivilege = "/api/base-role/get-menu";
  static const getBaseRole = "/api/base-role/get-base-roles";
  static const getMenuAction = "/api/base-role/get-list-action";
}

class CAAction {
  static const checkCloudCAUserStatus = "/CloudCAAction/checkUserStatus";
  static const authenticateCloudCAUser = "/CloudCAAction/authenticateUser";
  static const verifyCloudCAOTP = "/CloudCAAction/verifyOTPInSigning";
  static const registerCloudCADevice = "/CloudCAAction/registerDevice";
  static const getListCloudCADevices =
      "/textAction/getListCloudRegisteredDevices";
  static const getListCloudCACertificates =
      "/textAction/getListCloudCertificates";
  static const updateCloudCADefaultCertificate =
      "/textAction/updateDefaultCloudCert";
  static const deleteCloudCADevice = "/CloudCAAction/deleteDevice";
  static const activateCert = "/CertManagementAction/activateCert";
  static const alterIdentification =
      "/CertManagementAction/alterIdentification";
  static const cancelExtendCert = "/CertManagementAction/cancelExtendCert";
  static const cancelRenewCert = "/CertManagementAction/cancelRenewCert";
  static const confirmOTPSignUserCAInfo =
      "/CertManagementAction/confirmOTPSignUserCAInfo";
  static const confirmTransactionOtp =
      "/CertManagementAction/confirmTransactionOtp";
  static const extendCert = "/CertManagementAction/extendCert";
  static const getCertStateNow = "/CertManagementAction/getCertStateNow";
  static const getExtendCertStatus =
      "/CertManagementAction/getExtendCertStatus";
  static const makeCert = "/CertManagementAction/makeCert";
  static const requestOTPSignUserCAInfo =
      "/CertManagementAction/requestOTPSignUserCAInfo";
  static const signFileExtentCa = "/CertManagementAction/signFileExtentCa";
  static const signFileRenewCa = "/CertManagementAction/signFileRenewCa";
  static const synchonizeCertificate = "/textAction/synchonizeCertificate";
}

class CvGroupAction {
  static const getListGroup = "/CvGroupAction/getListGroup";
  static const getListStaffOfGroup = "/CvGroupAction/getListStaffOfGroup";
}

class DocumentAction {
  static const deleteDocument = "/DocumentAction/DeleteDocument";
  static const editDocument = "/DocumentAction/EditDocument";
  static const updateReadingStatus = "/DocumentAction/UpdateReadingStatus";
  static const actionSearchDocViewLibrary =
      "/DocumentAction/actionSearchDocViewLibrary";
  static const checkIsOnlyReceiveDoc = "/DocumentAction/checkIsOnlyReceiveDoc";
  static const checkPermissionDoc = "/DocumentAction/checkPermissionDoc";
  static const countDocument = "/DocumentAction/countDocument";
  static const findDocScopeREFByTextId =
      "/DocumentAction/findDocScopeREFByTextId";
  static const getDocScopeLibrary = "/DocumentAction/getDocScopeLibrary";
  static const getDocumentAttach = "/DocumentAction/getDocumentAttach";
  static const getDocumentDetail = "/DocumentAction/getDocumentDetail";
  static const getListGroup = "/DocumentAction/getListGroup";
  static const getListReceivedPersonalGroup =
      "/DocumentAction/getListReceivedPersonalGroup";
  static const getListReceivedStaffInDepartment =
      "/DocumentAction/getListReceivedStaffInDepartment";
  static const getListReceivedStaffInPersonalGroup =
      "/DocumentAction/getListReceivedStaffInPersonalGroup";
  static const getListReceiver = "/DocumentAction/getListReceiver";
  static const getListStaffReceiveFromDoc =
      "/DocumentAction/getListStaffReceiveFromDoc";
  static const getProcessedDetailByUser =
      "/DocumentAction/getProcessedDetailByUser";
  static const search = "/DocumentAction/search";
  static const sendDocument = "/DocumentAction/sendDocument";
  static const sendDocumentToGroup = "/DocumentAction/sendDocumentToGroup";
  static const sendDocumentToListPersonalGroup =
      "/DocumentAction/sendDocumentToListPersonalGroup";
  static const sendDocumentToStaff = "/DocumentAction/sendDocumentToStaff";
  static const tranferTextPromulgateOrNotPromulgate =
      "/DocumentAction/tranferTextPromulgateOrNotPromulgate";
  static const updateDocumentProcessing =
      "/DocumentAction/updateDocumentProcessing";
  static const updateStatusDocumentInStaff =
      "/DocumentAction/updateStatusDocumentInStaff";
  static const tickProcessedDoc = "/DocumentAction/tickProcessedDoc";
  static const searchDocumentIn = '/DocumentAction/searchDocumentIn';

  static const docReceivedDocument = '/DocumentAction/docReceivedDocument';
  static const documentOut = '/DocumentAction/searchDocumentOut';
  static const searchAll = '/DocumentAction/searchAll';
  static const getListRequestAnswer =
      '/answerDocumentAction/getListAnswerDocument';

  static const getReplyRequestDetail =
      '/answerDocumentAction/getReplyRequestDetail';

  static const getRequestedObject = '/answerDocumentAction/getRequestedObject';

  static const revokeDocument = '/api/doc-in/retrieval-doc-in-group';
  static const retrievalDocumentInGroup = '/api/doc-in/retrieval-doc-in-group';
  static const retrievalDocumentInCvGroup =
      '/api/doc-in/retrieval-doc-in-cv-group';
  static const getListOfficeOutside = '/DocumentAction/getListOfficeOutside';
  static const markReceivedKnowDocument = '/api/doc-in/mark-received-know-doc';
  static const cancelDocReceiveMap = '/DocumentAction/cancelDocReceiveMap';
  static const updateDocReceiveMap = '/DocumentAction/updateDocReceiveMap';
}

class DocumentPublishAction {
  static const getParentOrgLastSignOrg =
      "/DocumentPublishAction/getParentOrgLastSignOrg";
}

class DocumentService {
  static const getListDocTypes = "/DocumentService/getListDocTypes";
  static const getListFields = "/DocumentService/getListFields";
  static const getListUserSign = "/DocumentService/getListUserSign";
  static const getTreeDepartSign = "/DocumentService/getTreeDepartSign";
  static const sendAndSign = "/DocumentService/sendAndSign";
  static const changeStateSign = "/DocumentService/changeStateSign";
}

class Files {
  static const fileSize = "/Files/FileSize";
  static const getInfoFile = "/Files/getInfoFile";
  static const updateFilePageFileSize = "/Files/updateFilePageFileSize";
  static const downloadContentFile = "/Files/DownloadContentFile";
  static const downloadDocumentReplyAttach =
      "/Files/downloadDocumentReplyAttach";

  static const downloadStaffImage = "Files/DownloadStaffImage";
  static const uploadTmpFile = "/Files/UploadTmpFile";
}

class Log {
  static const insertActionLogMobile = "/Log/InsertActionLogMobile";
  static const insertUserActivityLog = "/Log/InsertUserActivityLog";
}

class Meeting {
  static const getListSource = "/Meeting/GetListSource";
  static const addMission = "/Meeting/addMission";
  static const changeMemberMeeting = "/Meeting/changeMemberMeeting";
  static const checkAttendMeeting = "/Meeting/checkAttendMeeting";
  static const getListUserMeeting = "/Meeting/getListUserMeeting";
  static const getListAbsenceMember = '/Meeting/getListAbsenceMember';
  static const manualRollCallMeeting = "/Meeting/manualRollCallMeeting";
  static const autoRollCallMeeting = "/Meeting/autoRollCallMeeting";
  static const countListMeetingMinutes = "/Meeting/countListMeetingMinutes";
  static const forwardMission = "/Meeting/forwardMission";
  static const getContentMeetingMember = "/Meeting/getContentMeetingMember";
  static const getDirectorConfigById = "/Meeting/getDirectorConfigById";
  static const getListField = "/Meeting/getListField";
  static const getListFileAttachment = "/Meeting/getListFileAttachment";
  static const getListMeetingMinutes = "/Meeting/getListMeetingMinutes";
  static const getListOrgPerformInAdvanceSearch =
      "/Meeting/getListOrgPerformInAdvanceSearch";
  static const getListOrganization = "/Meeting/getListOrganization";
  static const getListOrganizationAssign = "/Meeting/getListOrganizationAssign";
  static const getListOrganizationByUser = "/Meeting/getListOrganizationByUser";
  static const getListOrganizationExecute =
      "/Meeting/getListOrganizationExecute";
  static const getListOrganizationsAssign =
      "/Meeting/getListOrganizationsAssign";
  static const getMissionByMeetingId = "/Meeting/getMissionByMeetingId";
  static const getSourceMapMission = "/Meeting/getSourceMapMission";
  static const requestForSigningMeetingMinutes =
      "/Meeting/requestForSigningMeetingMinutes";
  static const getVideoConferencingList =
      "/MettingWeek/GetVideoConferencingList";
  static const getInternalParticipant =
      "/api/meet/get-meet-internal-participants";
  static const deleteCospaceInfo = "/Meeting/deleteCospaceInfo";
  static const permissionRollCall = "/Meeting/permissionRollCall";
}

class MeetingAssistantAction {
  static const approveReplateMember =
      "/MeetingAssistantAction/approveReplateMember";
  static const findMeetingChangeReplate =
      "/MeetingAssistantAction/findMeetingChangeReplate";
  static const getMeetingChangeReplate =
      "/MeetingAssistantAction/getMeetingChangeReplate";
}

class MeetingWeek {
  static const getOrgMeetingMember = "/api/meet/get-org-meet-member";
  static const getOrgMeetDetail = "/api/meet/get-org-meet-detail";
  static const approveCalendar = "/MettingWeek/approveCalendar";
  static const cancelCalendar = "/MettingWeek/cancelCalendar";
  static const changeLocation = "/MettingWeek/changeLocation";
  static const checkBeforeChangeMeetingRoom =
      "/MettingWeek/checkBeforeChangeMeetingRoom";
  static const checkChangeOrganizationApprove =
      "/MettingWeek/checkChangeOrganizationApprove";
  static const checkPermisionCalendar = "/MettingWeek/checkPermisionCalendar";
  static const deleteCalendar = "/MettingWeek/deleteCalendar";
  static const getListApproveCalendar = "/MettingWeek/getListApproveCalendar";
  static const getListCalendarDirectorOrgs =
      "/MettingWeek/getListCalendarDirectorOrgs";
  static const getListLocationFree = "/MettingWeek/getListLocationFree";
  static const getListMeetingNote = "/MettingWeek/getListMeetingNote";
  static const getLstMeetingWeek = "/MettingWeek/getLstMeetingWeek";
  static const getMeetingComanderResult =
      "/MettingWeek/getMeetingComanderResult";
  static const getMeetingForSmartRoom = "/MettingWeek/getMeetingForSmartRoom";
  static const getNoteBookDetail = "/MettingWeek/getNoteBookDetail";
  static const getWorkMeetingDirector = "/MettingWeek/getWorkMeetingDirector";
  static const rejectCalendar = "/MettingWeek/rejectCalendar";
  static const resetMeetingAttachComment =
      "/MettingWeek/resetMeetingAttachComment";
  static const saveMeetingNoteBook = "/MettingWeek/saveMeetingNoteBook";
  static const sendMail = "/MettingWeek/sendMail";
  static const sendSMSMeetingWeek = "/MettingWeek/sendSMSMeetingWeek";
  static const updateOrDelMeetingNoteFile =
      "/MettingWeek/updateOrDelMeetingNoteFile";
  static const validateSaveMeeting = "/MettingWeek/validateSaveMeeting";
  static const getMeetingNote = "/MettingWeek/getNoteBookDetail";
  static const getMeetingRollCall = "/MettingWeek/getMeetingRollCall";
}

class MeetingVote {
  static const getListVote = "/api/vote/get-lst-vote";
  static const insertVote = "/api/vote/insert-vote";
  static const deleteVote = "/api/vote/delete-vote";
  static const cancelVote = "/api/vote/cancel-vote";
  static const sendVote = "/api/vote/send-vote";
  static const answerVote = "/api/vote/answer-vote";
  static const checkVote = "/api/vote/check-vote";
  static const getListResultVote = "/api/vote/get-lst-result-vote";
}

class Org {
  static const getListEmployeeOfOrganization =
      "/Org/getListEmployeeOfOrganization";
}

class SLKD {
  static const getDepartment = "/SLKD/GetDepartment";
  static const getImageReportDesc = "/SLKD/GetImageReportDesc";
  static const getListReport = "/SLKD/GetListReport";
  static const getListSlide = "/SLKD/GetListSlide";
  static const getListDepartFolowFunc = "/SLKD/getListDepartFolowFunc";
  static const getListDepartFromMapFN = "/SLKD/getListDepartFromMapFN";
  static const getListImgPath = "/SLKD/getListImgPath";
  static const getListIndicatorFolowDepartFunc =
      "/SLKD/getListIndicatorFolowDepartFunc";
  static const getListIndicatorBase = "/SLTC/getListIndicatorBase";
  static const getRegionTreeByRoleSmart = "/SLTC/getRegionTreeByRoleSmart";
  static const getReportIndicatorChildData =
      "/SLTC/getReportIndicatorChildData";
  static const getReportIndicatorData = "/SLTC/getReportIndicatorData";
  static const getReportStatistics = "/SLTC/getReportStatistics";
  static const getTreeListIndicator = "/SLTC/getTreeListIndicator";
}

class Sign {
  static const checkSigningStatusForText = "/Sign/CheckSigningStatusForText";
  static const signSoftAttachMutiFile = "/Sign/SignSoftAttachMutiFile";
  static const signSoftHashMutiFile = "/Sign/SignSoftHashMutiFile";
  static const getP12CertInformation = "/Sign/getP12CertInformation";
  static const signCloudCA = "/Sign/SignCloudCA";
  static const signSIMCA = "/Sign/SignTextByCASIM";
}

class TaskService {
  static const addTask = "/TaskService/addTask";
  static const getListCommander = "/TaskService/getListCommander";
  static const getListPropose = "/TaskService/getListPropose";
  static const getListRatioPoint = "/TaskService/getListRatioPoint";
  static const getTreeEnforcement = "/TaskService/getTreeEnforcement";
}

class TextFileCommentAction {
  static const getListTextNote = "/TextFileCommentAction/getListTextNote";
  static const insertTextNote = "/TextFileCommentAction/insertTextNote";
  static const resetFileCommentDraff =
      "/TextFileCommentAction/resetFileCommentDraff";
  static const resetMeetingAttachComment =
      "/TextFileCommentAction/resetMeetingAttachComment";
  static const resetTextAttachComment =
      "/TextFileCommentAction/resetTextAttachComment";
  static const updateTextFileComment =
      "/TextFileCommentAction/updateTextFileComment";
}

class TextReportAction {
  static const getListStaffByRejectSign =
      "/TextReportAction/getListStaffByRejectSign";
  static const getLstDeatilDocRejectedByUserLogin =
      "/TextReportAction/getLstDeatilDocRejectedByUserLogin";
  static const getLstDetailDocRejectedOfStaff =
      "/TextReportAction/getLstDetailDocRejectedOfStaff";
  static const getStatisticalLineReportReject =
      "/TextReportAction/getStatisticalLineReportReject";
}

class VHROrgAction {
  static const getVHROrg = "/VHROrgAction/getVHROrg";
}

class AgreementAction {
  static const getDetailAgreementById =
      "/agreementAction/getDetailAgreementById";
  static const getDetailAgreementTask =
      "/agreementAction/getDetailAgreementTask";
  static const getListCharts = "/agreementAction/getListCharts";
  static const getDetailAgreement = "/agreementAction/getDetailAgreement";
  static const listAgreementStatus = "/agreementAction/listAgreementStatus";
  static const listGroupTypes = "/agreementAction/listGroupTypes";
  static const listTaskPriority = "/agreementAction/listTaskPriority";
  static const listTaskStatus = "/agreementAction/listTaskStatus";
}

class CommentAction {
  static const checkSavedPersonalStorage =
      "/commentAction/checkSavedPersonalStorage";
  static const savePersonalStorage = "/commentAction/savePersonalStorage";
  static const searchPeronalStorage = "/commentAction/searchPeronalStorage";
  static const getSupportCustomerInfo = "/commonAction/getSupportCustomerInfo";
}

class ImageSignAction {
  static const search = "/imageSignAction/search";
  static const downloadUrl = '/api/staff-image-sign/get-staff-image-sign/';
}

class MissionAction {
  static const countMission = "/missionAction/CountMission";
  static const approveOrRejectProcess = "/missionAction/approveOrRejectProcess";
  static const deleteMission = "/api/mission/{missionId}";
  static const findMissionByCondition = "/missionAction/findMissionByCondition";
  static const getCountByOrgPerformSpecialized =
      "/missionAction/getCountByOrgPerformSpecialized";
  static const getCountMissionNeedCompleted =
      "/missionAction/getCountMissionNeedCompleted";
  static const getFieldIdFromOrgPerform =
      "/missionAction/getFieldIdFromOrgPerform";
  static const getLastMissionProcessOfSubMissions =
      "/missionAction/getLastMissionProcessOfSubMissions";
  static const getListCombinationOrg = "/missionAction/getListCombinationOrg";
  static const getListFileAttachment = "/missionAction/getListFileAttachment";
  static const getListMission = "/missionAction/getListMission";
  static const getListMissionGroup = "/missionAction/getListMissionGroup";
  static const getListMissionLog = "/missionAction/getListMissionLog";
  static const getListMissionStatus = "/missionAction/getListMissionStatus";
  static const getListOrgSpecialized = "/missionAction/getListOrgSpecialized";
  static const getListTransferredMission =
      "/missionAction/getListTransferredMission";
  static const getMissionChartDetail = "/missionAction/getMissionChartDetail";
  static const getMissionCharts = "/missionAction/getMissionCharts";
  static const getMissionDetail = "/missionAction/getMissionDetail";
  static const getMissionProcessHistory =
      "/missionAction/getMissionProcessHistory";
  static const updateContentOrResultOfCombinationOrg =
      "/missionAction/updateContentOrResultOfCombinationOrg";
  static const updateMission = "/missionAction/updateMission";
  static const updateProcess = "/missionAction/updateProcess";
  static const getAssignMissionCharts =
      '/api/mission/get-assign-mission-charts';
  static const countAssignMission = '/api/mission/count-assign-mission';
  static const addInformationMission = '/missionAction/addInformationMission';
  static const getListOrgPerformInAdvanceSearch =
      '/Meeting/getListOrgPerformInAdvanceSearch';
  static const searchMissionV2 = '/api/mission/search-mission';
  static const getMissionPerformCharts =
      '/api/mission/get-perform-mission-charts';
  static const editPerformIdMission = '/missionAction/editPerformIdMission';
  static const getListAddionalMission = '/missionAction/getListAddionalMission';
  static const getListOrgPerform = '/api/mission/get-list-org-perform';
  static const closeMission = '/missionAction/closeMission';
}

class RequestAction {
  static const addRequest = "/requestAction/addRequest";
  static const addResolve = "/requestAction/addResolve";
  static const closeRequest = "/requestAction/closeRequest";
  static const confirmSolutionRequest = "/requestAction/confirmSolutionRequest";
  static const deleteRequest = "/requestAction/deleteRequest";
  static const forwardLevel = "/requestAction/forwardLevel";
  static const getListRequest = "/requestAction/getListRequest";
  static const getListRequestAdvance = "/requestAction/getListRequestAdvance";
  static const getRequestDetail = "/requestAction/getRequestDetail";
  static const getRoleRequest = "/requestAction/getRoleRequest";
}

class SolrSearch {
  static const getCountItem = "/solrSearch/getCountItem";
  static const getEmployeeCount = "/solrSearch/getEmployeeCount";
  static const getEmployeeList = "/solrSearch/getEmployeeList";
  static const getListItem = "/solrSearch/getListItem";
  static const getStatusUser = "/solrSearch/getStatusUser";
}

class StaffAction {
  static const getListUserMutiGroup = "/staffAction/getListUserMutiGroup";
  static const getLstUserVip = "/staffAction/getLstUserVip";
  static const getOrgInfoById = "/staffAction/getOrgInfoById";
  static const getUserInfor = "/staffAction/getUserInfor";
  static const getListUser = "/staffAction/getListUser";
}

class SyncFavAction {
  static const syncEmployeeFav = "/syncFavAction/syncEmployeeFav";
  static const syncOrganizationFav = "/syncFavAction/syncOrganizationFav";
}

class TaskAction {
  static const approveOrRejectTask = "/taskAction/ApproveOrRejectTask";
  static const cancelSignedTaskFileByEmployee =
      "/taskAction/CancelSignedTaskFileByEmployee";
  static const getEmployeeListToAssess = "/taskAction/GetEmployeeListToAssess";
  static const getEmployeeListToAssign = "/taskAction/GetEmployeeListToAssign";
  static const getTaskListToAssessByEmployee =
      "/taskAction/GetTaskListToAssessByEmployee";
  static const getTaskListToAssignByEmployee =
      "/taskAction/GetTaskListToAssignByEmployee";
  static const approveOrRejectTaskProcess =
      "/taskAction/approveOrRejectTaskProcess";
  static const checkStatusSignedTaskFileByEmployee =
      "/taskAction/checkStatusSignedTaskFileByEmployee";
  static const closeRequest = "/taskAction/closeRequest";
  static const closeTask = "/taskAction/closeTask";
  static const deleteTask = "/taskAction/deleteTask";
  static const exportListTaskFile = "/taskAction/exportListTaskFile";
  static const getFileAttachmentTask = "/taskAction/getFileAttachmentTask";
  static const getListRatioConfig = "/taskAction/getListRatioConfig";
  static const getListRatioConfigByOrg = "/taskAction/getListRatioConfigByOrg";
  static const getListRatioConfigDT = "/taskAction/getListRatioConfigDT";
  static const getListTask = "/taskAction/getListTask";
  static const getListTaskFromDocument = "/taskAction/getListTaskFromDocument";
  static const getListTaskFromMission = "/taskAction/getListTaskFromMission";
  static const getRequestList = "/taskAction/getRequestList";
  static const getSourceTask = "/taskAction/getSourceTask";
  static const getTaskDetail = "/taskAction/getTaskDetail";
  static const getTaskListToAssessByEmployeeEmp =
      "/taskAction/getTaskListToAssessByEmployeeEmp";
  static const getTaskReceiverHistory = "/taskAction/getTaskReceiverHistory";
  static const getUpdateTaskHistory = "/taskAction/getUpdateTaskHistory";
  static const receiveTaskStatus = "/taskAction/receiveTaskStatus";
  static const saveAverageTask = "/taskAction/saveAverageTask";
  static const saveTaskRating = "/taskAction/saveTaskRating";
  static const saveTaskRatingEmp = "/taskAction/saveTaskRatingEmp";
  static const updateCommentRequest = "/taskAction/updateCommentRequest";
  static const updateTaskProcess = "/taskAction/updateTaskProcess";
}

class TempAction {
  static const addTemplate = "/tempAction/addTemplate";
  static const deleteListTemplate = "/tempAction/deleteListTemplate";
  static const deleteTemplate = "/tempAction/deleteTemplate";
  static const editTemplate = "/tempAction/editTemplate";
  static const getListTemplate = "/tempAction/getListTemplate";
  static const updateIndexTemplate = "/tempAction/updateIndexTemplate";
}

class TextAction {
  static const getHistoryOfSignerChange =
      "/textAction/GetHistoryOfSignerChange";
  static const cancelDocumentPublish = "/textAction/cancelDocumentPublish";
  static const countTextSignAll = "/textAction/countTextSignAll";
  static const documentPromulgate = "/textAction/documentPromulgate";
  static const getCountHome = "/textAction/getCountHome";
  static const getListRegisterNumber = "/textAction/getListRegisterNumber";
  static const getTextDetail = "/textAction/getTextDetail";
  static const rejectSignDocByVTAction = "/textAction/rejectSignDocByVTAction";
  static const rejectSignDocument = "/textAction/rejectSignDocument";
  static const searchText = "/textAction/searchText";
  static const transferToPreSigner = "/textAction/transferToPreSigner";
  static const updateListSigner = "/textAction/updateListSigner";
  static const updateSignImageBySecrectary =
      "/textAction/updateSignImageBySecrectary";
  static const updateSigner = "/textAction/updateSigner";
  static const deleteRequisition = "/textAction/deleteRequisition";
  static const updateAutoPromulgateText =
      "/textAction/updateAutoPromulgateText";
  static const askForSeal = "/textAction/askForSeal";
  static const getOrgMarkedList = "/textAction/getOrgMarkedList";
  static const updateDatabaseSign = "/textAction/updateDatabaseSign";
  static const saveTextExplanation = "/textAction/saveTextExplanation";
  static const getListTextExplanation = "/textAction/getListTextExplanation";
  static const getPeopleInApprovalFlow = "/textAction/getPeopleInApprovalFlow";
  static const signMultiple = "/textAction/updateDatabaseMultiSign";
  static const searchTextAll = "/textAction/searchTextAll";
}

class TextBookAction {
  static const getTextBooksByOrgIdAndDocType =
      "/textBookAction/getTextBooksByOrgIdAndDocType";
  static const addTextMarkSync = "/textMarkSyncAction/addTextMarkSync";
  static const getTextMarkSync = "/textMarkSyncAction/getTextMarkSync";
  static const getNextRegisterNumberByTextBookId =
      "/textBookAction/getNextRegisterNumberByTextBookId";
}

class DocumentLeaderCommentAction {
  static const saveDocumentLeaderComment =
      "/api/doc-leader-comment/save-doc-leader-comment";
}

class FavouriteAction {
  static const getFavourites = "/api/favourite/getFavourites";
}

class DocumentCommentAction {
  static const getDocumentLeaderComment =
      "/api/doc-leader-comment/get-doc-leader-comments";
}

class TextDraftAction {
  static const getAdvise = "/api/text-draft/get-advise";
  static const getAdviseHistory = "/api/text-draft/get-text-draft-history";
  static const searchTextDraft = '/api/text-draft/search-text-draft';
  static const assignAdviser = '/api/text-draft/assign-adviser';
  static const giveAdvise = '/api/text-draft/give-advise';
}
