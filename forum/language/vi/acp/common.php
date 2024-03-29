<?php
/** 
*
* acp_common [Vietnamese]
*
* @package language
* @version $Id: common.php 94 2008-11-13 05:09:00Z nedka $
* @copyright (c) 2006, 2008 nedka (Nguyen Dang Khoa)
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
*
* Vietnamese Language Pack for phpBB3
*
* phpBB iVN (phpBB in Vietnamese) Project
* Translated by nedka (Nguyen Dang Khoa) - http://www.vinabb.com/
*
*/

/**
* DO NOT CHANGE
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

if (empty($lang) || !is_array($lang))
{
	$lang = array();
}

// DEVELOPERS PLEASE NOTE
//
// All language files should use UTF-8 as their encoding and the files must not contain a BOM.
//
// Placeholders can now contain order information, e.g. instead of
// 'Page %s of %s' you can (and should) write 'Page %1$s of %2$s', this allows
// translators to re-order the output of data while ensuring it remains correct
//
// You do not need this where single placeholders are used, e.g. 'Message %d' is fine
// equally where a string contains only two placeholders which are used to wrap text
// in a url you again do not need to specify an order e.g., 'Click %sHERE%s' is fine

// Common
$lang = array_merge($lang, array(
	'ACP_ADMINISTRATORS'		=> 'Cấp phép quản trị viên',
	'ACP_ADMIN_LOGS'			=> 'Ghi nhận quản trị viên',
	'ACP_ADMIN_ROLES'			=> 'Nhiệm vụ quản trị viên',
	'ACP_ATTACHMENTS'			=> 'Tập tin đính kèm',
	'ACP_ATTACHMENT_SETTINGS'	=> 'Thiết lập tập tin đính kèm',
	'ACP_AUTH_SETTINGS'			=> 'Thiết lập xác thực',
	'ACP_AUTOMATION'			=> 'Tự động hoá',
	'ACP_AVATAR_SETTINGS'		=> 'Thiết lập hình đại diện',

	'ACP_BACKUP'				=> 'Sao lưu',
	'ACP_BAN'					=> 'Danh sách cấm',
	'ACP_BAN_EMAILS'			=> 'Cấm theo địa chỉ email',
	'ACP_BAN_IPS'				=> 'Cấm theo địa chỉ IP',
	'ACP_BAN_USERNAMES'			=> 'Cấm theo tên thành viên',
	'ACP_BBCODES'				=> 'Tùy biến thẻ BBCode',
	'ACP_BOARD_CONFIGURATION'	=> 'Cấu hình hệ thống',
	'ACP_BOARD_FEATURES'		=> 'Thiết lập chức năng hệ thống',
	'ACP_BOARD_MANAGEMENT'		=> 'Quản lí hệ thống',
	'ACP_BOARD_SETTINGS'		=> 'Thiết lập hệ thống',
	'ACP_BOTS'					=> 'Quản lí máy tìm kiếm',

	'ACP_CAPTCHA'				=> 'Thiết lập cơ chế đồ hoạ mã xác nhận',

	'ACP_CAT_DATABASE'			=> 'Cơ sở dữ liệu',
	'ACP_CAT_DOT_MODS'			=> 'MOD',
	'ACP_CAT_FORUMS'			=> 'Chuyên mục',
	'ACP_CAT_GENERAL'			=> 'Tổng quát',
	'ACP_CAT_MAINTENANCE'		=> 'Bảo trì',
	'ACP_CAT_PERMISSIONS'		=> 'Cấp phép',
	'ACP_CAT_POSTING'			=> 'Gửi bài',
	'ACP_CAT_STYLES'			=> 'Giao diện',
	'ACP_CAT_SYSTEM'			=> 'Hệ thống',
	'ACP_CAT_USERGROUP'			=> 'Thành viên và nhóm',
	'ACP_CAT_USERS'				=> 'Thành viên',
	'ACP_CLIENT_COMMUNICATION'	=> 'Ứng dụng truyền thông',
	'ACP_COOKIE_SETTINGS'		=> 'Thiết lập cookie',
	'ACP_CRITICAL_LOGS'			=> 'Ghi nhận lỗi',
	'ACP_CUSTOM_PROFILE_FIELDS'	=> 'Tùy biến mục thông tin cá nhân',

	'ACP_DATABASE'				=> 'Quản lí cơ sở dữ liệu',
	'ACP_DISALLOW'				=> 'Cấm sử dụng',
	'ACP_DISALLOW_USERNAMES'	=> 'Tên thành viên bị cấm sử dụng',

	'ACP_EMAIL_SETTINGS'		=> 'Thiết lập email',
	'ACP_EXTENSION_GROUPS'		=> 'Quản lí nhóm tập tin đính kèm',

	'ACP_FORUM_BASED_PERMISSIONS'	=> 'Cấp phép cho chuyên mục',
	'ACP_FORUM_LOGS'				=> 'Ghi nhận chuyên mục',
	'ACP_FORUM_MANAGEMENT'			=> 'Quản lí chuyên mục',
	'ACP_FORUM_MODERATORS'			=> 'Cấp phép điều hành viên cho chuyên mục',
	'ACP_FORUM_PERMISSIONS'			=> 'Cấp phép chuyên mục',
	'ACP_FORUM_ROLES'				=> 'Nhiệm vụ chuyên mục',

	'ACP_GENERAL_CONFIGURATION'		=> 'Cấu hình tổng quát',
	'ACP_GENERAL_TASKS'				=> 'Thao tác tổng quát',
	'ACP_GLOBAL_MODERATORS'			=> 'Cấp phép điều hành viên chính',
	'ACP_GLOBAL_PERMISSIONS'		=> 'Cấp phép chung',	
	'ACP_GROUPS'					=> 'Nhóm',
	'ACP_GROUPS_FORUM_PERMISSIONS'	=> 'Cấp phép chuyên mục cho nhóm',
	'ACP_GROUPS_MANAGE'				=> 'Quản lí nhóm',
	'ACP_GROUPS_MANAGEMENT'			=> 'Quản lí nhóm',
	'ACP_GROUPS_PERMISSIONS'		=> 'Cấp phép nhóm',

	'ACP_ICONS'					=> 'Biểu tượng bài viết',
	'ACP_ICONS_SMILIES'			=> 'Biểu tượng bài viết/biểu tượng vui',
	'ACP_IMAGESETS'				=> 'Gói hình giao diện',
	'ACP_INACTIVE_USERS'		=> 'Thành viên chưa kích hoạt',
	'ACP_INDEX'					=> 'Bảng quản trị viên',

	'ACP_JABBER_SETTINGS'		=> 'Thiết lập Jabber',

	'ACP_LANGUAGE'				=> 'Quản lí ngôn ngữ',
	'ACP_LANGUAGE_PACKS'		=> 'Gói ngôn ngữ',
	'ACP_LOAD_SETTINGS'			=> 'Thiết lập nạp trang',
	'ACP_LOGGING'				=> 'Ghi nhận',

	'ACP_MAIN'					=> 'Bảng quản trị viên',
	'ACP_MANAGE_EXTENSIONS'		=> 'Quản lí tập tin đính kèm',
	'ACP_MANAGE_FORUMS'			=> 'Quản lí chuyên mục',
	'ACP_MANAGE_RANKS'			=> 'Quản lí xếp hạng',
	'ACP_MANAGE_REASONS'		=> 'Quản lí báo cáo/nguyên nhân từ chối',
	'ACP_MANAGE_USERS'			=> 'Quản lí thành viên',
	'ACP_MASS_EMAIL'			=> 'Gửi email thành viên',
	'ACP_MESSAGES'				=> 'Bài viết',
	'ACP_MESSAGE_SETTINGS'		=> 'Thiết lập tin nhắn',
	'ACP_MODULE_MANAGEMENT'		=> 'Quản lí gói chức năng',
	'ACP_MOD_LOGS'				=> 'Ghi nhận điều hành viên',
	'ACP_MOD_ROLES'				=> 'Nhiệm vụ điều hành viên',

	'ACP_NO_ITEMS'	=> 'Chưa có mục nào.',

	'ACP_ORPHAN_ATTACHMENTS'	=> 'Tập tin đính kèm không sử dụng',

	'ACP_PERMISSIONS'		=> 'Cấp phép',
	'ACP_PERMISSION_MASKS'	=> 'Danh sách cấp phép',
	'ACP_PERMISSION_ROLES'	=> 'Cấp phép nhiệm vụ',
	'ACP_PERMISSION_TRACE'	=> 'Dò theo cấp phép',
	'ACP_PHP_INFO'			=> 'Thông tin PHP',
	'ACP_POST_SETTINGS'		=> 'Thiết lập gửi bài',
	'ACP_PRUNE_FORUMS'		=> 'Dọn dẹp chuyên mục',
	'ACP_PRUNE_USERS'		=> 'Dọn dẹp thành viên',
	'ACP_PRUNING'			=> 'Dọn dẹp',

	'ACP_QUICK_ACCESS'	=> 'Truy cập nhanh',

	'ACP_RANKS'				=> 'Xếp hạng',
	'ACP_REASONS'			=> 'Báo cáo/nguyên nhân từ chối',
	'ACP_REGISTER_SETTINGS'	=> 'Thiết lập đăng ký thành viên',

	'ACP_RESTORE'	=> 'Phục hồi',

	'ACP_SEARCH'				=> 'Cấu hình tìm kiếm',
	'ACP_SEARCH_INDEX'			=> 'Chỉ mục tìm kiếm',
	'ACP_SEARCH_SETTINGS'		=> 'Thiết lập tìm kiếm',

	'ACP_SECURITY_SETTINGS'		=> 'Thiết lập bảo mật',
	'ACP_SERVER_CONFIGURATION'	=> 'Cấu hình máy chủ',
	'ACP_SERVER_SETTINGS'		=> 'Thiết lập máy chủ',
	'ACP_SIGNATURE_SETTINGS'	=> 'Thiết lập chữ ký cá nhân',
	'ACP_SMILIES'				=> 'Biểu tượng vui',
	'ACP_STYLE_COMPONENTS'		=> 'Thành phần giao diện',
	'ACP_STYLE_MANAGEMENT'		=> 'Quản lí giao diện',
	'ACP_STYLES'				=> 'Giao diện',

	'ACP_TEMPLATES'	=> 'Khuôn mẫu',
	'ACP_THEMES'	=> 'Kiểu dáng',

	'ACP_UPDATE'					=> 'Cập nhật',
	'ACP_USERS_FORUM_PERMISSIONS'	=> 'Cấp phép chuyên mục cho thành viên',
	'ACP_USERS_LOGS'				=> 'Ghi nhận thành viên',
	'ACP_USERS_PERMISSIONS'			=> 'Cấp phép thành viên',
	'ACP_USER_ATTACH'				=> 'Tập tin đính kèm',
	'ACP_USER_AVATAR'				=> 'Hình đại diện',
	'ACP_USER_FEEDBACK'				=> 'Phản hồi',
	'ACP_USER_GROUPS'				=> 'Nhóm',
	'ACP_USER_MANAGEMENT'			=> 'Quản lí thành viên',
	'ACP_USER_OVERVIEW'				=> 'Tổng quan',
	'ACP_USER_PERM'					=> 'Cấp phép thành viên',
	'ACP_USER_PREFS'				=> 'Thiết lập cá nhân',
	'ACP_USER_PROFILE'				=> 'Thông tin cá nhân',
	'ACP_USER_RANK'					=> 'Xếp hạng thành viên',
	'ACP_USER_ROLES'				=> 'Nhiệm vụ thành viên',
	'ACP_USER_SECURITY'				=> 'Bảo mật thành viên',
	'ACP_USER_SIG'					=> 'Chữ ký cá nhân',

	'ACP_VC_SETTINGS'					=> 'Thiết lập mã xác nhận',
	'ACP_VC_CAPTCHA_DISPLAY'			=> 'Xem trước cơ chế đồ hoạ mã xác nhận',	
	'ACP_VERSION_CHECK'					=> 'Kiểm tra cập nhật',
	'ACP_VIEW_ADMIN_PERMISSIONS'		=> 'Xem cấp phép dành cho quản trị viên',
	'ACP_VIEW_FORUM_MOD_PERMISSIONS'	=> 'Xem cấp phép chuyên mục dành cho điều hành viên',
	'ACP_VIEW_FORUM_PERMISSIONS'		=> 'Xem cấp phép dành cho chuyên mục',
	'ACP_VIEW_GLOBAL_MOD_PERMISSIONS'	=> 'Xem cấp phép dành cho điều hành viên chính',
	'ACP_VIEW_USER_PERMISSIONS'			=> 'Xem cấp phép dành cho thành viên',

	'ACP_WORDS'	=> 'Kiểm duyệt từ',

	'ACTION'		=> 'Thao tác',
	'ACTIONS'		=> 'Các thao tác',
	'ACTIVATE'		=> 'Kích hoạt',
	'ADD'			=> 'Thêm',
	'ADMIN'			=> 'Quản trị viên',
	'ADMIN_INDEX'	=> 'Trang quản trị',
	'ADMIN_PANEL'	=> 'Bảng quản trị viên',

	'ADM_LOGOUT'		=> 'Thoát quản trị',
	'ADM_LOGGED_OUT'	=> 'Bạn đã thoát khỏi bảng điều khiển quản trị viên thành công.',

	'BACK'	=> 'Quay lại',

	'COLOUR_SWATCH'		=> 'Bảng mã màu an toàn',
	'CONFIG_UPDATED'	=> 'Cấu hình hệ thống đã được cập nhật thành công.',

	'DEACTIVATE'				=> 'Ngưng kích hoạt',
	'DIRECTORY_DOES_NOT_EXIST'	=> 'Đường dẫn bạn vừa nhập “%s” không tồn tại.',
	'DIRECTORY_NOT_DIR'			=> 'Đường dẫn bạn vừa nhập “%s” không phải là một thư mục.',
	'DIRECTORY_NOT_WRITABLE'	=> 'Đường dẫn bạn vừa nhập “%s” không thể ghi.',
	'DISABLE'					=> 'Vô hiệu',
	'DOWNLOAD'					=> 'Tải về',
	'DOWNLOAD_AS'				=> 'Tải về dưới dạng',
	'DOWNLOAD_STORE'			=> 'Tải về hoặc lưu trữ tập tin',
	'DOWNLOAD_STORE_EXPLAIN'	=> 'Bạn có thể tải về trực tiếp tập tin hoặc lưu trữ lại trong thư mục <samp>store/</samp> của hệ thống.',

	'EDIT'				=> 'Sửa',
	'ENABLE'			=> 'Bật',
	'EXPORT_DOWNLOAD'	=> 'Tải về',
	'EXPORT_STORE'		=> 'Lưu trữ',

	'GENERAL_OPTIONS'	=> 'Tùy chọn tổng quát',
	'GENERAL_SETTINGS'	=> 'Thiết lập tổng quát',
	'GLOBAL_MASK'		=> 'Danh sách cấp phép chung',

	'INSTALL'		=> 'Cài đặt',
	'IP'			=> 'Địa chỉ IP',
	'IP_HOSTNAME'	=> 'Địa chỉ IP hoặc tên miền',

	'LOGGED_IN_AS'				=> 'Bạn đã đăng nhập dưới tên:',
	'LOGIN_ADMIN'				=> 'Bạn phải được cấp phép trong hệ thống để truy cập vào bảng quản trị viên.',
	'LOGIN_ADMIN_CONFIRM'		=> 'Để chuyển đến bảng quản trị viên, bạn cần phải xác thực lại tài khoản của mình trong hệ thống.',
	'LOGIN_ADMIN_SUCCESS'		=> 'Bạn đã xác thực thành công với hệ thống và sẽ được chuyển đến bảng quản trị viên ngay bây giờ.',
	'LOOK_UP_FORUM'				=> 'Chọn một chuyên mục',
	'LOOK_UP_FORUMS_EXPLAIN'	=> 'Bạn có thể chọn nhiều hơn một chuyên mục.',

	'MANAGE'				=> 'Quản lí',
	'MENU_TOGGLE'			=> 'Ẩn/Hiện trình đơn',
	'MOVE_DOWN'				=> 'Di chuyển xuống',
	'MOVE_UP'				=> 'Di chuyển lên',

	'NOTIFY'				=> 'Thông báo',
	'NO_ADMIN'				=> 'Bạn không được cấp phép để quản lí hệ thống.',
	'NO_EMAILS_DEFINED'		=> 'Không có địa chỉ email hợp lệ nào được tìm thấy.',
	'NO_PASSWORD_SUPPLIED'	=> 'Bạn cần phải nhập mật khẩu của mình để truy cập vào bảng điều khiển dành cho quản trị viên.',

	'OFF'	=> 'Tắt',
	'ON'	=> 'Bật',

	'PARSE_BBCODE'						=> 'Nhận diện BBCode',
	'PARSE_SMILIES'						=> 'Nhận diện biểu tượng vui',
	'PARSE_URLS'						=> 'Nhận diện liên kết',
	'PERMISSIONS_TRANSFERRED'			=> 'Thiết lập cấp phép đã được chuyển',
	'PERMISSIONS_TRANSFERRED_EXPLAIN'	=> 'Bạn hiện đang có những thiết lập cấp phép từ “%1$s”. Bạn có thể truy cập vào hệ thống với thiết lập cấp phép thành viên này nhưng không thể truy cập được vào bảng điều khiển dành cho quản trị viên bởi vì những thiết lập cấp phép dành cho người quản trị không được chuyển đến bạn. Bạn cũng có thể <a href="%2$s"><strong>phục hồi lại thiết lập cấp phép của mình</strong></a> bất cứ lúc nào bạn muốn.',
	'PIXEL'								=> 'px',
	'PROCEED_TO_ACP'					=> '%sChuyển đến bảng quản trị viên%s',

	'REMIND'				=> 'Nhắc nhở',
	'RESYNC'				=> 'Đồng bộ hóa',	
	'RETURN_TO'				=> 'Quay về…',

	'SELECT_ANONYMOUS'		=> 'Chọn thành viên ẩn',
	'SELECT_OPTION'			=> 'Chọn các mục tùy chọn',

	'SETTING_TOO_LOW'		=> 'Giá trị bạn vừa nhập cho thiết lập “%1$s” quá thấp. Giá trị tối thiểu cho phép là <strong>%2$d</strong>.',
	'SETTING_TOO_BIG'		=> 'Giá trị bạn vừa nhập cho thiết lập “%1$s” quá lớn. Giá trị tối đa cho phép là <strong>%2$d</strong>.',
	'SETTING_TOO_LONG'		=> 'Giá trị bạn vừa nhập cho thiết lập “%1$s” quá dài. Độ dài tối đa cho phép là <strong>%2$d</strong>.',
	'SETTING_TOO_SHORT'		=> 'Giá trị bạn vừa nhập cho thiết lập “%1$s” quá ngắn. Độ dài tối thiểu cho phép là <strong>%2$d</strong>.',

	'UCP'					=> 'Bảng thiết lập cá nhân',
	'USERNAMES_EXPLAIN'		=> 'Nhập vào mỗi tên thành viên trên một hàng nhất định.',
	'USER_CONTROL_PANEL'	=> 'Bảng điều khiển thành viên',

	'WARNING'				=> 'Cảnh báo',
));

// PHP info
$lang = array_merge($lang, array(
	'ACP_PHP_INFO_EXPLAIN'	=> 'Trang này liệt kê các thông tin về phiên bản PHP hiện tại được cài đặt trên máy chủ của bạn. Trang này cũng đính kèm thông tin chi tiết về các gói chức năng đã được cài đặt và nạp cùng với PHP, những biến PHP sẵn có và những thiết lập PHP mặc định. Thông tin này có thể hữu ích cho bạn nếu bạn đang giải quyết những rắc rối mà mình gặp phải với hệ thống. Cần lưu ý rằng có một vài công ty cung cấp dịch vụ lưu trữ Web sẽ hạn chế những thông tin về PHP được hiển thị trong đây vì nguyên nhân bảo mật. Một lời khuyên dành cho bạn là đừng bao giờ cung cấp cho người khác biết những thông tin trên trang này ngoại trừ khi bạn đang yêu cầu hỗ trợ từ <a href="http://www.phpbb.com/about/team/">các thành viên trong nhóm chính thức</a> của diễn đàn hỗ trợ phpBB.',

	'NO_PHPINFO_AVAILABLE'	=> 'Thông tin cấu hình PHP trên máy chủ của bạn không thể thu thập được. Hàm <code>phpinfo()</code> đã bị vô hiệu vì nguyên nhân bảo mật.',
));

// Logs
$lang = array_merge($lang, array(
	'ACP_ADMIN_LOGS_EXPLAIN'	=> 'Danh sách này liệt kê tất cả những thao tác được thực hiện bởi các quản trị viên. Bạn có thể sắp xếp theo tên thành viên, ngày tháng, địa chỉ IP hay thao tác. Nếu bạn được cấp phép, bạn có thể xóa từng bản ghi nhận thao tác cá nhân hay toàn bộ ghi nhận trong đây.',
	'ACP_CRITICAL_LOGS_EXPLAIN'	=> 'Danh sách này liệt kê tất cả những thao tác được thực hiện bởi chính hệ thống. Việc ghi nhận này sẽ cung cấp cho bạn thông tin nếu như bạn đang giải quyết các rắc rối gặp phải với hệ thống, ví dụ như việc gửi email từ hệ thống. Bạn có thể sắp xếp theo tên thành viên, ngày tháng, địa chỉ IP hay thao tác. Nếu bạn được cấp phép, bạn có thể xóa từng bản ghi nhận thao tác cá nhân hay toàn bộ ghi nhận trong đây.',
	'ACP_MOD_LOGS_EXPLAIN'		=> 'Danh sách này liệt kê tất cả những thao tác được thực hiện trong chuyên mục, chủ đề và bài viết đối với thành viên bởi các điều hành viên, bao gồm cả lệnh cấm. Bạn có thể sắp xếp theo tên thành viên, ngày tháng, địa chỉ IP hay thao tác. Nếu bạn được cấp phép, bạn cũng có thể xóa từng bản ghi nhận thao tác cá nhân hay toàn bộ ghi nhận trong đây.',
	'ACP_USERS_LOGS_EXPLAIN'	=> 'Đây là danh sách ghi nhận các thao tác của những thành viên trong hệ thống (báo cáo, cảnh báo và ghi chú về thành viên).',
	'ALL_ENTRIES'				=> 'Tất cả các mục',

	'DISPLAY_LOG'	=> 'Hiển thị những mục ghi nhận cách đây',

	'NO_ENTRIES'	=> 'Không có mục ghi nhận nào trong khoảng thời gian này.',

	'SORT_IP'		=> 'Địa chỉ IP',
	'SORT_DATE'		=> 'Ngày tháng',
	'SORT_ACTION'	=> 'Thao tác ghi nhận',
));

// Index page
$lang = array_merge($lang, array(
	'ADMIN_INTRO'				=> 'Cám ơn bạn đã chọn sử dụng phpBB cho hệ thống của mình. Trang này sẽ cho bạn cái nhìn tổng quan về các giá trị thống kê khác nhau trong hệ thống. Các liên kết trong trình đơn bên trái sẽ cho phép bạn điều khiển và cấu hình toàn bộ hệ thống với kinh nghiệm quản lí của mình. Mỗi trang sẽ có hướng dẫn riêng cách sử dụng từng loại công cụ.',
	'ADMIN_LOG'					=> 'Những thao tác quản trị đã ghi nhận',
	'ADMIN_LOG_INDEX_EXPLAIN'	=> 'Đây là 5 thao tác mới nhất được thực hiện bởi các quản trị viên. Bạn có thể xem danh sách đầy đủ trong phần ghi nhận thao tác tại trình đơn tương ứng hoặc liên kết dưới đây.',
	'AVATAR_DIR_SIZE'			=> 'Dung lượng thư mục hình đại diện',

	'BOARD_STARTED'		=> 'Ngày bắt đầu hoạt động',
	'BOARD_VERSION'		=> 'Phiên bản hệ thống',

	'DATABASE_SERVER_INFO'	=> 'Máy chủ cơ sở dữ liệu',
	'DATABASE_SIZE'			=> 'Dung lượng cơ sở dữ liệu',

	'FILES_PER_DAY'		=> 'Số tập tin đính kèm/ngày',
	'FORUM_STATS'		=> 'Thống kê hệ thống',

	'GZIP_COMPRESSION'	=> 'Chế độ nén Gzip',

	'NOT_AVAILABLE'		=> 'Không có sẵn',
	'NUMBER_FILES'		=> 'Số tập tin đính kèm',
	'NUMBER_POSTS'		=> 'Số bài viết',
	'NUMBER_TOPICS'		=> 'Số chủ đề',
	'NUMBER_USERS'		=> 'Số thành viên',
	'NUMBER_ORPHAN'		=> 'Số tập tin đính kèm không sử dụng',

	'POSTS_PER_DAY'		=> 'Số bài viết/ngày',

	'PURGE_CACHE'			=> 'Dọn sạch bộ nhớ đệm',
	'PURGE_CACHE_CONFIRM'	=> 'Bạn có chắc chắn muốn dọn sạch bộ nhớ đệm?',
	'PURGE_CACHE_EXPLAIN'	=> 'Dọn sạch tất cả các thành phần có liên quan đến bộ nhớ đệm, bao gồm tất cả các tập tin khuôn mẫu và lệnh truy xuất SQL đã được tạo bộ nhớ đệm.',

	'RESET_DATE'					=> 'Tạo lại ngày hệ thống bắt đầu hoạt động mới',
	'RESET_DATE_CONFIRM'			=> 'Bạn có chắc chắn muốn tạo lại ngày hệ thống bắt đầu hoạt động mới?',
	'RESET_ONLINE'					=> 'Tạo lại số lượng thành viên trực tuyến đông nhất',
	'RESET_ONLINE_CONFIRM'			=> 'Bạn có chắc chắn muốn tạo lại thông tin số lượng thành viên trực tuyến đông nhất?',
	'RESYNC_POSTCOUNTS'				=> 'Đồng bộ hóa bộ đếm số bài viết',
	'RESYNC_POSTCOUNTS_EXPLAIN'		=> 'Chỉ những bài viết còn hiệu hữu trong diễn đàn mới được tính vào bộ đếm. Những bài viết đã được dọn dẹp sẽ không được tính.',
	'RESYNC_POSTCOUNTS_CONFIRM'		=> 'Bạn có chắc chắn muốn đồng bộ hóa lại bộ đếm số bài viết?',
	'RESYNC_POST_MARKING'			=> 'Đồng bộ hóa những chủ đề đã đánh dấu',
	'RESYNC_POST_MARKING_CONFIRM'	=> 'Bạn có chắc chắn muốn đồng bộ hóa lại những chủ đề đã đánh dấu?',
	'RESYNC_POST_MARKING_EXPLAIN'	=> 'Đầu tiên là tất cả các chủ đề không được đánh dấu và sau đó đánh dấu chính xác những chủ đề không còn bất cứ bài viết nào được gửi trong suốt 6 tháng qua.',
	'RESYNC_STATS'					=> 'Đồng bộ hóa thông tin thống kê',
	'RESYNC_STATS_CONFIRM'			=> 'Bạn có chắc chắn muốn đồng bộ hóa thông tin thống kê?',
	'RESYNC_STATS_EXPLAIN'			=> 'Đếm lại tổng số chủ đề, bài viết, thành viên và tập tin đính kèm trong hệ thống.',
	'RUN'							=> 'Chạy',

	'STATISTIC'					=> 'Thống kê',
	'STATISTIC_RESYNC_OPTIONS'	=> 'Đồng bộ hóa hoặc tạo mới lại thông tin thống kê',

	'TOPICS_PER_DAY'	=> 'Số chủ đề/ngày',

	'UPLOAD_DIR_SIZE'	=> 'Dung lượng thư mục tập tin đính kèm',
	'USERS_PER_DAY'		=> 'Số thành viên/ngày',

	'VALUE'					=> 'Giá trị',
	'VIEW_ADMIN_LOG'		=> 'Xem ghi nhận về quản trị viên',
	'VIEW_INACTIVE_USERS'	=> 'Xem các thành viên chưa kích hoạt',

	'WELCOME_PHPBB'			=> 'Chào mừng bạn bước vào thế giới phpBB',
	'WRITABLE_CONFIG'		=> 'Tập tin cấu hình của bạn (config.php) hiện tại đang được cấp phép có thể ghi với mọi loại người dùng. Chúng tôi khuyến cáo bạn phải thay đổi ngay cấp phép cho tập tin này thành <strong>640</strong> hoặc ít nhất là <strong>644</strong> (Ví dụ: <a href="http://en.wikipedia.org/wiki/Chmod" rel="external">CHMOD</a> 640 cho tập tin config.php).',
));

// Inactive Users
$lang = array_merge($lang, array(
	'INACTIVE_DATE'					=> 'Ngày chưa kích hoạt',
	'INACTIVE_REASON'				=> 'Nguyên nhân chưa kích hoạt',
	'INACTIVE_REASON_MANUAL'		=> 'Tài khoản đã bị ngưng kích hoạt bởi quản trị viên',
	'INACTIVE_REASON_PROFILE'		=> 'Đã thay đổi thông tin cá nhân',
	'INACTIVE_REASON_REGISTER'		=> 'Tài khoản mới đăng ký',
	'INACTIVE_REASON_REMIND'		=> 'Đã được yêu cầu kích hoạt lại tài khoản thành viên',
	'INACTIVE_REASON_UNKNOWN'		=> 'Không biết',
	'INACTIVE_USERS'				=> 'Thành viên chưa kích hoạt',
	'INACTIVE_USERS_EXPLAIN'		=> 'Dưới đây là danh sách các thành viên đã đăng ký nhưng tài khoản của họ vẫn chưa được kích hoạt. Bạn có thể kích hoạt, xóa tài khoản của họ hay nhắc nhở bằng email những thành viên này nếu bạn muốn.',
	'INACTIVE_USERS_EXPLAIN_INDEX'	=> 'Dưới đây là danh sách 10 thành viên vừa mới đăng ký nhưng chưa kích hoạt tài khoản của mình. Bạn có thể xem toàn bộ danh sách này từ trình đơn thích hợp bên trái hoặc bấm vào liên kết bên dưới để chuyển đến bảng điều khiển cho phép bạn có thể kích hoạt, xóa tài khoản hay nhắc nhở bằng email những thành viên này nếu bạn muốn.',

	'NO_INACTIVE_USERS'	=> 'Không có thành viên nào chưa kích hoạt',

	'SORT_INACTIVE'		=> 'Ngày chưa kích hoạt',
	'SORT_LAST_VISIT'	=> 'Lần ghé thăm trước',
	'SORT_REASON'		=> 'Nguyên nhân',
	'SORT_REG_DATE'		=> 'Ngày đăng ký',

	'USER_IS_INACTIVE'	=> 'Thành viên chưa kích hoạt',
));

// Log Entries
$lang = array_merge($lang, array(
	'LOG_ACL_ADD_USER_GLOBAL_U_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép thành viên của các thành viên</strong><br />» %s',
	'LOG_ACL_ADD_GROUP_GLOBAL_U_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép nhóm thành viên của các nhóm</strong><br />» %s',
	'LOG_ACL_ADD_USER_GLOBAL_M_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép điều hành viên chính của các thành viên</strong><br />» %s',
	'LOG_ACL_ADD_GROUP_GLOBAL_M_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép nhóm điều hành viên chính của các nhóm</strong><br />» %s',
	'LOG_ACL_ADD_USER_GLOBAL_A_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép quản trị viên của các thành viên</strong><br />» %s',
	'LOG_ACL_ADD_GROUP_GLOBAL_A_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép nhóm quản trị viên của các nhóm</strong><br />» %s',

	'LOG_ACL_ADD_ADMIN_GLOBAL_A_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa quản trị viên</strong><br />» %s',
	'LOG_ACL_ADD_MOD_GLOBAL_M_'			=> '<strong>Đã thêm vào hoặc chỉnh sửa điều hành viên chính</strong><br />» %s',

	'LOG_ACL_ADD_USER_LOCAL_F_'			=> '<strong>Đã thêm vào hoặc chỉnh sửa quyền truy cập chuyên mục của các thành viên</strong> từ %1$s<br />» %2$s',
	'LOG_ACL_ADD_USER_LOCAL_M_'			=> '<strong>Đã thêm vào hoặc chỉnh sửa quyền truy cập và quản lí chuyên mục của các thành viên</strong> từ %1$s<br />» %2$s',
	'LOG_ACL_ADD_GROUP_LOCAL_F_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa quyền truy cập chuyên mục của các nhóm</strong> từ %1$s<br />» %2$s',
	'LOG_ACL_ADD_GROUP_LOCAL_M_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa quyền truy cập và quản lí chuyên mục của các nhóm</strong> từ %1$s<br />» %2$s',

	'LOG_ACL_ADD_MOD_LOCAL_M_'			=> '<strong>Đã thêm vào hoặc chỉnh sửa điều hành viên</strong> từ %1$s<br />» %2$s',
	'LOG_ACL_ADD_FORUM_LOCAL_F_'		=> '<strong>Đã thêm vào hoặc chỉnh sửa cấp phép chuyên mục</strong> từ %1$s<br />» %2$s',

	'LOG_ACL_DEL_ADMIN_GLOBAL_A_'		=> '<strong>Đã gỡ bỏ quản trị viên</strong><br />» %s',
	'LOG_ACL_DEL_MOD_GLOBAL_M_'			=> '<strong>Đã gỡ bỏ điều hành viên chính</strong><br />» %s',
	'LOG_ACL_DEL_MOD_LOCAL_M_'			=> '<strong>Đã gỡ bỏ điều hành viên</strong> từ %1$s<br />» %2$s',
	'LOG_ACL_DEL_FORUM_LOCAL_F_'		=> '<strong>Đã gỡ bỏ cấp phép chuyên mục dành cho thành viên/nhóm</strong> từ %1$s<br />» %2$s',

	'LOG_ACL_TRANSFER_PERMISSIONS'		=> '<strong>Thiết lập cấp phép đã được chuyển từ</strong><br />» %s',
	'LOG_ACL_RESTORE_PERMISSIONS'		=> '<strong>Thiết lập cấp phép đã được khôi phục kể từ khi chuyển thiết lập cấp phép từ</strong><br />» %s',

	'LOG_ADMIN_AUTH_FAIL'		=> '<strong>Đăng nhập thất bại vào bảng quản trị viên</strong>',
	'LOG_ADMIN_AUTH_SUCCESS'	=> '<strong>Đăng nhập thành công vào bảng quản trị viên</strong>',

	'LOG_ATTACHMENTS_DELETED'	=> '<strong>Đã gỡ bỏ những tập tin đính kèm của thành viên</strong><br />» %s',

	'LOG_ATTACH_EXT_ADD'		=> '<strong>Đã thêm vào hoặc chỉnh sửa loại tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_EXT_DEL'		=> '<strong>Đã gỡ bỏ loại tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_EXT_UPDATE'		=> '<strong>Đã cập nhật loại tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_EXTGROUP_ADD'	=> '<strong>Đã thêm vào nhóm tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_EXTGROUP_EDIT'	=> '<strong>Đã chỉnh sửa nhóm tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_EXTGROUP_DEL'	=> '<strong>Đã gỡ bỏ nhóm tập tin đính kèm</strong><br />» %s',
	'LOG_ATTACH_FILEUPLOAD'		=> '<strong>Tập tin đính kèm không sử dụng đã được đính kèm vào bài viết</strong><br />» Số ID %1$d - %2$s',
	'LOG_ATTACH_ORPHAN_DEL'		=> '<strong>Những tập tin đính kèm không sử dụng đã được xóa</strong><br />» %s',

	'LOG_BAN_EXCLUDE_USER'	=> '<strong>Đã loại trừ thành viên khỏi danh sách cấm</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_BAN_EXCLUDE_IP'	=> '<strong>Đã loại trừ địa chỉ IP khỏi danh sách cấm</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_BAN_EXCLUDE_EMAIL' => '<strong>Đã loại trừ địa chỉ email khỏi danh sách cấm</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_BAN_USER'			=> '<strong>Đã cấm thành viên</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_BAN_IP'			=> '<strong>Đã cấm địa chỉ IP</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_BAN_EMAIL'			=> '<strong>Đã cấm địa chỉ email</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_UNBAN_USER'		=> '<strong>Đã ngưng cấm thành viên</strong><br />» %s',
	'LOG_UNBAN_IP'			=> '<strong>Đã ngưng cấm địa chỉ IP</strong><br />» %s',
	'LOG_UNBAN_EMAIL'		=> '<strong>Đã ngưng cấm địa chỉ email</strong><br />» %s',

	'LOG_BBCODE_ADD'		=> '<strong>Đã thêm vào thẻ BBCode mới</strong><br />» %s',
	'LOG_BBCODE_EDIT'		=> '<strong>Đã chỉnh sửa thẻ BBCode</strong><br />» %s',
	'LOG_BBCODE_DELETE'		=> '<strong>Đã xóa thẻ BBCode</strong><br />» %s',

	'LOG_BOT_ADDED'		=> '<strong>Bot mới đã được tạo</strong><br />» %s',
	'LOG_BOT_DELETE'	=> '<strong>Đã xóa Bot</strong><br />» %s',
	'LOG_BOT_UPDATED'	=> '<strong>Bot đã được cập nhật</strong><br />» %s',

	'LOG_CLEAR_ADMIN'		=> '<strong>Đã xóa ghi nhận của quản trị viên</strong>',
	'LOG_CLEAR_CRITICAL'	=> '<strong>Đã xóa ghi nhận lỗi</strong>',
	'LOG_CLEAR_MOD'			=> '<strong>Đã xóa ghi nhận của điều hành viên</strong>',
	'LOG_CLEAR_USER'		=> '<strong>Đã xóa ghi nhận của thành viên</strong><br />» %s',
	'LOG_CLEAR_USERS'		=> '<strong>Đã xóa những ghi nhận của thành viên</strong>',

	'LOG_CONFIG_ATTACH'			=> '<strong>Đã thay đổi thiết lập đính kèm tập tin</strong>',
	'LOG_CONFIG_AUTH'			=> '<strong>Đã thay đổi thiết lập xác thực</strong>',
	'LOG_CONFIG_AVATAR'			=> '<strong>Đã thay đổi thiết lập hình đại diện</strong>',
	'LOG_CONFIG_COOKIE'			=> '<strong>Đã thay đổi thiết lập cookie</strong>',
	'LOG_CONFIG_EMAIL'			=> '<strong>Đã thay đổi thiết lập email</strong>',
	'LOG_CONFIG_FEATURES'		=> '<strong>Đã thay đổi thiết lập chức năng của hệ thống</strong>',
	'LOG_CONFIG_LOAD'			=> '<strong>Đã thay đổi thiết lập nạp trang</strong>',
	'LOG_CONFIG_MESSAGE'		=> '<strong>Đã thay đổi thiết lập tin nhắn</strong>',
	'LOG_CONFIG_POST'			=> '<strong>Đã thay đổi thiết lập gửi bài</strong>',
	'LOG_CONFIG_REGISTRATION'	=> '<strong>Đã thay đổi thiết lập đăng ký thành viên</strong>',
	'LOG_CONFIG_SEARCH'			=> '<strong>Đã thay đổi thiết lập tìm kiếm</strong>',
	'LOG_CONFIG_SECURITY'		=> '<strong>Đã thay đổi thiết lập bảo mật</strong>',
	'LOG_CONFIG_SERVER'			=> '<strong>Đã thay đổi thiết lập máy chủ</strong>',
	'LOG_CONFIG_SETTINGS'		=> '<strong>Đã thay đổi thiết lập hệ thống</strong>',
	'LOG_CONFIG_SIGNATURE'		=> '<strong>Đã thay đổi thiết lập chữ ký cá nhân</strong>',
	'LOG_CONFIG_VISUAL'			=> '<strong>Đã thay đổi thiết lập mã xác nhận</strong>',

	'LOG_APPROVE_TOPIC'			=> '<strong>Đã duyệt chủ đề</strong><br />» %s',
	'LOG_BUMP_TOPIC'			=> '<strong>Thành viên đã đẩy chủ đề lên</strong><br />» %s',
	'LOG_DELETE_POST'			=> '<strong>Đã xóa bài viết</strong><br />» %s',
	'LOG_DELETE_SHADOW_TOPIC'	=> '<strong>Đã xóa liên kết đến chủ đề cũ</strong><br />» %s',
	'LOG_DELETE_TOPIC'			=> '<strong>Đã xóa chủ đề</strong><br />» %s',
	'LOG_FORK'					=> '<strong>Đã sao chép chủ đề</strong><br />» từ %s',
	'LOG_LOCK'					=> '<strong>Đã khóa chủ đề</strong><br />» %s',
	'LOG_LOCK_POST'				=> '<strong>Đã khóa bài viết</strong><br />» %s',
	'LOG_MERGE'					=> '<strong>Đã nhập chung bài viết</strong> sang chủ đề<br />» %s',
	'LOG_MOVE'					=> '<strong>Đã di chuyển chủ đề</strong><br />» từ %1$s sang %2$s',
	'LOG_POST_APPROVED'			=> '<strong>Đã duyệt bài viết</strong><br />» %s',
	'LOG_POST_DISAPPROVED'		=> '<strong>Đã từ chối bài viết “%1$s” với nguyên nhân sau</strong><br />» %2$s',
	'LOG_POST_EDITED'			=> '<strong>Đã sửa bài viết “%1$s” được gửi bởi</strong><br />» %2$s',
	'LOG_REPORT_CLOSED'			=> '<strong>Đã kết thúc báo cáo</strong><br />» %s',
	'LOG_REPORT_DELETED'		=> '<strong>Đã xóa báo cáo</strong><br />» %s',
	'LOG_SPLIT_DESTINATION'		=> '<strong>Đã di chuyển các bài viết được chia nhỏ</strong><br />» đến %s',
	'LOG_SPLIT_SOURCE'			=> '<strong>Các bài viết được chia nhỏ</strong><br />» từ %s',

	'LOG_TOPIC_APPROVED'		=> '<strong>Đã duyệt chủ đề</strong><br />» %s',
	'LOG_TOPIC_DISAPPROVED'		=> '<strong>Đã từ chối chủ đề “%1$s” với nguyên nhân sau</strong><br />%2$s',
	'LOG_TOPIC_RESYNC'			=> '<strong>Đã đồng bộ lại bộ đếm số chủ đề</strong><br />» %s',
	'LOG_TOPIC_TYPE_CHANGED'	=> '<strong>Đã thay đổi loại chủ đề</strong><br />» %s',
	'LOG_UNLOCK'				=> '<strong>Đã mở khóa chủ đề</strong><br />» %s',
	'LOG_UNLOCK_POST'			=> '<strong>Đã mở khóa bài viết</strong><br />» %s',

	'LOG_DISALLOW_ADD'		=> '<strong>Đã thêm vào tên thành viên bị cấm</strong><br />» %s',
	'LOG_DISALLOW_DELETE'	=> '<strong>Đã xóa tên thành viên bị cấm</strong>',

	'LOG_DB_BACKUP'			=> '<strong>Đã sao lưu cơ sở dữ liệu</strong>',
	'LOG_DB_DELETE'			=> '<strong>Đã xóa bản sao lưu cơ sở dữ liệu</strong>',
	'LOG_DB_RESTORE'		=> '<strong>Đã khôi phục bản sao lưu dữ liệu</strong>',

	'LOG_DOWNLOAD_EXCLUDE_IP'	=> '<strong>Đã loại trừ địa chỉ IP/Tên miền từ danh sách cho phép tải về</strong><br />» %s',
	'LOG_DOWNLOAD_IP'			=> '<strong>Đã thêm vào địa chỉ IP/Tên miền từ danh sách cho phép tải về</strong><br />» %s',
	'LOG_DOWNLOAD_REMOVE_IP'	=> '<strong>Đã gỡ bỏ địa chỉ IP/Tên miền từ danh sách cho phép tải về</strong><br />» %s',

	'LOG_ERROR_JABBER'		=> '<strong>Lỗi Jabber</strong><br />» %s',
	'LOG_ERROR_EMAIL'		=> '<strong>Lỗi email</strong><br />» %s',

	'LOG_FORUM_ADD'							=> '<strong>Đã tạo chuyên mục mới</strong><br />» %s',
	'LOG_FORUM_DEL_FORUM'					=> '<strong>Đã xóa chuyên mục</strong><br />» %s',
	'LOG_FORUM_DEL_FORUMS'					=> '<strong>Đã xóa chuyên mục và toàn bộ chuyên mục con</strong><br />» %s',
	'LOG_FORUM_DEL_MOVE_FORUMS'				=> '<strong>Đã xóa chuyên mục và di chuyển toàn bộ chuyên mục con</strong> đến %1$s<br />» %2$s',
	'LOG_FORUM_DEL_MOVE_POSTS'				=> '<strong>Đã xóa chuyên mục và di chuyển toàn bộ bài viết</strong> đến %1$s<br />» %2$s',
	'LOG_FORUM_DEL_MOVE_POSTS_FORUMS'		=> '<strong>Đã xóa chuyên mục và toàn bộ chuyên mục con, đã di chuyển toàn bộ bài viết</strong> đến %1$s<br />» %2$s',
	'LOG_FORUM_DEL_MOVE_POSTS_MOVE_FORUMS'	=> '<strong>Đã xóa chuyên mục, đã di chuyển toàn bộ bài viết</strong> đến %1$s <strong>và toàn bộ chuyên mục con</strong> đến %2$s<br />» %3$s',
	'LOG_FORUM_DEL_POSTS'					=> '<strong>Đã xóa chuyên mục và toàn bộ bài viết</strong><br />» %s',
	'LOG_FORUM_DEL_POSTS_FORUMS'			=> '<strong>Đã xóa chuyên mục, toàn bộ chuyên mục con và bài viết</strong><br />» %s',
	'LOG_FORUM_DEL_POSTS_MOVE_FORUMS'		=> '<strong>Đã xóa chuyên mục và toàn bộ bài viết, đã di chuyển toàn bộ chuyên mục con</strong> đến %1$s<br />» %2$s',
	'LOG_FORUM_EDIT'						=> '<strong>Đã chỉnh sửa thông tin chuyên mục</strong><br />» %s',
	'LOG_FORUM_MOVE_DOWN'					=> '<strong>Đã di chuyển chuyên mục</strong> %1$s <strong>xuống dưới</strong> %2$s',
	'LOG_FORUM_MOVE_UP'						=> '<strong>Đã di chuyển chuyên mục</strong> %1$s <strong>lên trên</strong> %2$s',
	'LOG_FORUM_SYNC'						=> '<strong>Đã đồng bộ lại chuyên mục</strong><br />» %s',

	'LOG_GROUP_CREATED'		=> '<strong>Nhóm thành viên mới đã được tạo</strong><br />» %s',
	'LOG_GROUP_DEFAULTS'	=> '<strong>Đã chọn “%1$s” là nhóm mặc định cho các thành viên</strong><br />» %2$s',
	'LOG_GROUP_DELETE'		=> '<strong>Nhóm đã được xóa</strong><br />» %s',
	'LOG_GROUP_DEMOTED'		=> '<strong>Người điều hành đã được giáng chức trong nhóm</strong> %1$s<br />» %2$s',
	'LOG_GROUP_PROMOTED'	=> '<strong>Thành viên đã được thăng chức người điều hành trong nhóm</strong> %1$s<br />» %2$s',
	'LOG_GROUP_REMOVE'		=> '<strong>Thành viên đã được gỡ bỏ khỏi nhóm</strong> %1$s<br />» %2$s',
	'LOG_GROUP_UPDATED'		=> '<strong>Thông tin về nhóm đã được cập nhật</strong><br />» %s',
	'LOG_MODS_ADDED'		=> '<strong>Đã thêm vào người điều hành mới trong nhóm</strong> %1$s<br />» %2$s',
	'LOG_USERS_APPROVED'	=> '<strong>Thành viên đã được chấp thuận tham gia vào nhóm</strong> %1$s<br />» %2$s',
	'LOG_USERS_ADDED'		=> '<strong>Đã thêm vào thành viên mới trong nhóm</strong> %1$s<br />» %2$s',

	'LOG_IMAGESET_ADD_DB'		=> '<strong>Đã thêm vào gói hình giao diện mới trong cơ sở dữ liệu</strong><br />» %s',
	'LOG_IMAGESET_ADD_FS'		=> '<strong>Đã thêm vào gói hình giao diện mới trong hệ thống tập tin giao diện</strong><br />» %s',
	'LOG_IMAGESET_DELETE'			=> '<strong>Đã xóa gói hình giao diện</strong><br />» %s',
	'LOG_IMAGESET_EDIT_DETAILS'		=> '<strong>Đã chỉnh sửa thông tin gói hình giao diện</strong><br />» %s',
	'LOG_IMAGESET_EDIT'				=> '<strong>Đã chỉnh sửa gói hình giao diện</strong><br />» %s',
	'LOG_IMAGESET_EXPORT'			=> '<strong>Đã xuất gói hình giao diện</strong><br />» %s',
	'LOG_IMAGESET_LANG_MISSING'		=> '<strong>Gói hình giao diện đã bỏ sót phần phiên dịch “%2$s”</strong><br />» %1$s',
	'LOG_IMAGESET_LANG_REFRESHED'	=> '<strong>Đã nạp lại bản phiên dịch “%2$s” của gói hình giao diện</strong><br />» %1$s',
	'LOG_IMAGESET_REFRESHED'		=> '<strong>Đã nạp lại gói hình giao diện</strong><br />» %s',

	'LOG_INACTIVE_ACTIVATE'	=> '<strong>Đã kích hoạt những thành viên chưa kích hoạt</strong><br />» %s',
	'LOG_INACTIVE_DELETE'	=> '<strong>Đã xóa những thành viên chưa kích hoạt</strong><br />» %s',
	'LOG_INACTIVE_REMIND'	=> '<strong>Đã gửi email nhắc nhở đến những thành viên chưa kích hoạt</strong><br />» %s',
	'LOG_INSTALL_CONVERTED'	=> '<strong>Đã chuyển đổi từ hệ thống %1$s sang hệ thống phpBB %2$s</strong>',
	'LOG_INSTALL_INSTALLED'	=> '<strong>Đã cài đặt hệ thống phpBB %s</strong>',

	'LOG_IP_BROWSER_FORWARDED_CHECK'	=> '<strong>Không thể kiểm tra địa chỉ IP/trình duyệt/X_FORWARDED_FOR trong phiên đăng nhập này</strong><br />» Địa chỉ IP của thành viên “<em>%1$s</em>” đã được kiểm tra lại trong phiên đăng nhập này với kết quả là “<em>%2$s</em>”, chuỗi trình duyệt thành viên “<em>%3$s</em>” đã được kiểm tra lại trong phiên đăng nhập này với kết quả là “<em>%4$s</em>” và chuỗi X_FORWARDED_FOR thành viên “<em>%5$s</em>” đã được kiểm tra lại trong phiên đăng nhập này với kết quả là “<em>%6$s</em>”.',

	'LOG_JAB_CHANGED'			=> '<strong>Tài khoản Jabber đã được thay đổi</strong>',
	'LOG_JAB_PASSCHG'			=> '<strong>Mật khẩu tài khoản Jabber đã được thay đổi</strong>',
	'LOG_JAB_REGISTER'			=> '<strong>Tài khoản Jabber đã được đăng ký</strong>',
	'LOG_JAB_SETTINGS_CHANGED'	=> '<strong>Thiết lập Jabber đã được thay đổi</strong>',

	'LOG_LANGUAGE_PACK_DELETED'		=> '<strong>Đã xóa gói ngôn ngữ</strong><br />» %s',
	'LOG_LANGUAGE_PACK_INSTALLED'	=> '<strong>Đã cài đặt gói ngôn ngữ</strong><br />» %s',
	'LOG_LANGUAGE_PACK_UPDATED'		=> '<strong>Đã cập nhật thông tin về gói ngôn ngữ</strong><br />» %s',
	'LOG_LANGUAGE_FILE_REPLACED'	=> '<strong>Đã thay thế gói ngôn ngữ</strong><br />» %s',
	'LOG_LANGUAGE_FILE_SUBMITTED'	=> '<strong>Đã cập nhật tập tin ngôn ngữ và đã được đặt trong thư mục lưu trữ</strong><br />» %s',

	'LOG_MASS_EMAIL'		=> '<strong>Đã gửi email số lượng lớn đến thành viên</strong><br />» %s',

	'LOG_MCP_CHANGE_POSTER'	=> '<strong>Đã thay đổi người gửi trong chủ đề “%1$s”</strong><br />» từ %2$s thành %3$s',

	'LOG_MODULE_DISABLE'	=> '<strong>Gói chức năng đã được vô hiệu</strong><br />» %s',
	'LOG_MODULE_ENABLE'		=> '<strong>Gói chức năng đã được kích hoạt</strong><br />» %s',
	'LOG_MODULE_MOVE_DOWN'	=> '<strong>Gói chức năng đã được di chuyển xuống</strong><br />» %1$s xuống dưới %2$s',
	'LOG_MODULE_MOVE_UP'	=> '<strong>Gói chức năng đã được di chuyển lên</strong><br />» %1$s lên trên %2$s',
	'LOG_MODULE_REMOVED'	=> '<strong>Gói chức năng đã được gỡ bỏ</strong><br />» %s',
	'LOG_MODULE_ADD'		=> '<strong>Gói chức năng đã được thêm vào</strong><br />» %s',
	'LOG_MODULE_EDIT'		=> '<strong>Gói chức năng đã được chỉnh sửa</strong><br />» %s',

	'LOG_A_ROLE_ADD'		=> '<strong>Nhiệm vụ quản trị viên đã được thêm vào</strong><br />» %s',
	'LOG_A_ROLE_EDIT'		=> '<strong>Nhiệm vụ quản trị viên đã được chỉnh sửa</strong><br />» %s',
	'LOG_A_ROLE_REMOVED'	=> '<strong>Nhiệm vụ quản trị viên đã được gỡ bỏ</strong><br />» %s',
	'LOG_F_ROLE_ADD'		=> '<strong>Nhiệm vụ chuyên mục đã được thêm vào</strong><br />» %s',
	'LOG_F_ROLE_EDIT'		=> '<strong>Nhiệm vụ chuyên mục đã được chỉnh sửa</strong><br />» %s',
	'LOG_F_ROLE_REMOVED'	=> '<strong>Nhiệm vụ chuyên mục đã được gỡ bỏ</strong><br />» %s',
	'LOG_M_ROLE_ADD'		=> '<strong>Nhiệm vụ điều hành viên đã được thêm vào</strong><br />» %s',
	'LOG_M_ROLE_EDIT'		=> '<strong>Nhiệm vụ điều hành viên đã được chỉnh sửa</strong><br />» %s',
	'LOG_M_ROLE_REMOVED'	=> '<strong>Nhiệm vụ điều hành viên đã được gỡ bỏ</strong><br />» %s',
	'LOG_U_ROLE_ADD'		=> '<strong>Nhiệm vụ thành viên đã được thêm vào</strong><br />» %s',
	'LOG_U_ROLE_EDIT'		=> '<strong>Nhiệm vụ thành viên đã được chỉnh sửa</strong><br />» %s',
	'LOG_U_ROLE_REMOVED'	=> '<strong>Nhiệm vụ thành viên đã được gỡ bỏ</strong><br />» %s',

	'LOG_PROFILE_FIELD_ACTIVATE'	=> '<strong>Mục thông tin cá nhân đã được kích hoạt</strong><br />» %s',
	'LOG_PROFILE_FIELD_CREATE'		=> '<strong>Mục thông tin cá nhân đã được thêm vào</strong><br />» %s',
	'LOG_PROFILE_FIELD_DEACTIVATE'	=> '<strong>Mục thông tin cá nhân đã được ngưng kích hoạt</strong><br />» %s',
	'LOG_PROFILE_FIELD_EDIT'		=> '<strong>Mục thông tin cá nhân đã được thay đổi</strong><br />» %s',
	'LOG_PROFILE_FIELD_REMOVED'		=> '<strong>Mục thông tin cá nhân đã được gỡ bỏ</strong><br />» %s',

	'LOG_PRUNE'					=> '<strong>Đã dọn dẹp chuyên mục</strong><br />» %s',
	'LOG_AUTO_PRUNE'			=> '<strong>Đã dọn dẹp tự động chuyên mục</strong><br />» %s',
	'LOG_PRUNE_USER_DEAC'		=> '<strong>Thành viên đã được ngưng kích hoạt</strong><br />» %s',
	'LOG_PRUNE_USER_DEL_DEL'	=> '<strong>Thành viên đã được dọn dẹp và toàn bộ bài viết đã được xóa</strong><br />» %s',
	'LOG_PRUNE_USER_DEL_ANON'	=> '<strong>Thành viên đã được dọn dẹp và toàn bộ bài viết đã được giữ lại</strong><br />» %s',

	'LOG_PURGE_CACHE'		=> '<strong>Đã dọn sạch bộ nhớ đệm</strong>',

	'LOG_RANK_ADDED'		=> '<strong>Đã thêm vào xếp hạng mới</strong><br />» %s',
	'LOG_RANK_REMOVED'		=> '<strong>Đã gỡ bỏ xếp hạng</strong><br />» %s',
	'LOG_RANK_UPDATED'		=> '<strong>Đã cập nhật xếp hạng</strong><br />» %s',

	'LOG_REASON_ADDED'		=> '<strong>Đã thêm vào báo cáo/nguyên nhân từ chối</strong><br />» %s',
	'LOG_REASON_REMOVED'	=> '<strong>Đã gỡ bỏ báo cáo/nguyên nhân từ chối</strong><br />» %s',
	'LOG_REASON_UPDATED'	=> '<strong>Đã cập nhật báo cáo/nguyên nhân từ chối</strong><br />» %s',

	'LOG_REFERER_INVALID'		=> '<strong>Kiểm tra tham chiếu thất bại</strong><br />» Tham chiếu là “<em>%1$s</em>”. Yêu cầu đã bị từ chối và phiên đăng nhập bị hủy bỏ.',
	'LOG_RESET_DATE'			=> '<strong>Ngày hệ thống bắt đầu hoạt động đã được tạo lại</strong>',
	'LOG_RESET_ONLINE'			=> '<strong>Thông tin thành viên trực tuyến đã được tạo lại</strong>',
	'LOG_RESYNC_POSTCOUNTS'		=> '<strong>Bộ đếm số bài viết thành viên đã được đồng bộ lại</strong>',
	'LOG_RESYNC_POST_MARKING'	=> '<strong>Những chủ đề được đánh dấu đã được đồng bộ lại</strong>',
	'LOG_RESYNC_STATS'			=> '<strong>Trạng thái chủ đề, bài viết và thành viên đã được đồng bộ lại</strong>',

	'LOG_SEARCH_INDEX_CREATED'	=> '<strong>Đã tạo chỉ mục tìm kiếm cho</strong><br />» %s',
	'LOG_SEARCH_INDEX_REMOVED'	=> '<strong>Đã gỡ bỏ chỉ mục tìm kiếm của</strong><br />» %s',
	'LOG_STYLE_ADD'				=> '<strong>Đã thêm vào giao diện mới</strong><br />» %s',
	'LOG_STYLE_DELETE'			=> '<strong>Đã xóa giao diện</strong><br />» %s',
	'LOG_STYLE_EDIT_DETAILS'	=> '<strong>Đã chỉnh sửa giao diện</strong><br />» %s',
	'LOG_STYLE_EXPORT'			=> '<strong>Đã xuất giao diện</strong><br />» %s',

	'LOG_TEMPLATE_ADD_DB'			=> '<strong>Đã thêm vào khuôn mẫu mới trong cơ sở dữ liệu</strong><br />» %s',
	'LOG_TEMPLATE_ADD_FS'			=> '<strong>Đã thêm vào khuôn mẫu mới trong hệ thống tập tin giao diện</strong><br />» %s',
	'LOG_TEMPLATE_CACHE_CLEARED'	=> '<strong>Đã xóa những tập tin khuôn mẫu được tạo bộ nhớ đệm <em>%1$s</em></strong><br />» %2$s',
	'LOG_TEMPLATE_DELETE'			=> '<strong>Đã xóa khuôn mẫu</strong><br />» %s',
	'LOG_TEMPLATE_EDIT'				=> '<strong>Đã chỉnh sửa khuôn mẫu <em>%1$s</em></strong><br />» %2$s',
	'LOG_TEMPLATE_EDIT_DETAILS'		=> '<strong>Đã chỉnh sửa thông tin khuôn mẫu</strong><br />» %s',
	'LOG_TEMPLATE_EXPORT'			=> '<strong>Đã xuất khuôn mẫu</strong><br />» %s',
	'LOG_TEMPLATE_REFRESHED'		=> '<strong>Đã nạp lại khuôn mẫu</strong><br />» %s',
	
	'LOG_THEME_ADD_DB'			=> '<strong>Đã thêm vào kiểu dáng mới trong cơ sở dữ liệu</strong><br />» %s',
	'LOG_THEME_ADD_FS'			=> '<strong>Đã thêm vào kiểu dáng mới trong hệ thống tập tin giao diện</strong><br />» %s',
	'LOG_THEME_DELETE'			=> '<strong>Kiểu dáng đã được xóa</strong><br />» %s',
	'LOG_THEME_EDIT_DETAILS'	=> '<strong>Đã chỉnh sửa thông tin kiểu dáng</strong><br />» %s',
	'LOG_THEME_EDIT'			=> '<strong>Đã chỉnh sửa kiểu dáng <em>%1$s</em></strong>',
	'LOG_THEME_EDIT_FILE'		=> '<strong>Đã chỉnh sửa kiểu dáng <em>%1$s</em></strong><br />» Tập tin đã chỉnh sửa <em>%2$s</em>',
	'LOG_THEME_EXPORT'			=> '<strong>Đã xuất kiểu dáng</strong><br />» %s',
	'LOG_THEME_REFRESHED'		=> '<strong>Đã nạp lại kiểu dáng</strong><br />» %s',

	'LOG_UPDATE_DATABASE'	=> '<strong>Đã cập nhật cơ sở dữ liệu từ phiên bản %1$s lên phiên bản %2$s</strong>',
	'LOG_UPDATE_PHPBB'		=> '<strong>Đã cập nhật hệ thống phpBB từ phiên bản %1$s lên phiên bản %2$s</strong>',

	'LOG_USER_ACTIVE'		=> '<strong>Thành viên đã được kích hoạt</strong><br />» %s',
	'LOG_USER_BAN_USER'		=> '<strong>Đã cấm thành viên thông qua phần quản lí thành viên</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_USER_BAN_IP'		=> '<strong>Đã cấm địa chỉ IP thông qua phần quản lí thành viên</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_USER_BAN_EMAIL'	=> '<strong>Đã cấm địa chỉ email thông qua phần quản lí thành viên</strong> vì nguyên nhân “<em>%1$s</em>”<br />» %2$s',
	'LOG_USER_DELETED'		=> '<strong>Đã xóa thành viên</strong><br />» %s',
	'LOG_USER_DEL_ATTACH'	=> '<strong>Đã gỡ bỏ toàn bộ tập tin đính kèm được gửi bởi thành viên</strong><br />» %s',
	'LOG_USER_DEL_AVATAR'	=> '<strong>Đã gỡ bỏ hình đại diện của thành viên</strong><br />» %s',
	'LOG_USER_DEL_POSTS'	=> '<strong>Đã gỡ bỏ toàn bộ bài viết được gửi bởi thành viên</strong><br />» %s',
	'LOG_USER_DEL_SIG'		=> '<strong>Đã gỡ bỏ chữ ký cá nhân của thành viên</strong><br />» %s',
	'LOG_USER_INACTIVE'		=> '<strong>Thành viên đã được ngưng kích hoạt</strong><br />» %s',
	'LOG_USER_MOVE_POSTS'	=> '<strong>Đã di chuyển bài viết của thành viên</strong><br />» bài viết gửi bởi “%1$s” sang chuyên mục “%2$s”',
	'LOG_USER_NEW_PASSWORD'	=> '<strong>Đã thay đổi mật khẩu của thành viên</strong><br />» %s',
	'LOG_USER_REACTIVATE'	=> '<strong>Đã yêu cầu thành viên kích hoạt lại tài khoản</strong><br />» %s',
	'LOG_USER_UPDATE_EMAIL'	=> '<strong>Thành viên “%1$s” đã thay đổi địa chỉ email</strong><br />» từ “%2$s” thành “%3$s”',
	'LOG_USER_UPDATE_NAME'	=> '<strong>Đã thay đổi tên thành viên</strong><br />» từ “%1$s” sang “%2$s”',
	'LOG_USER_USER_UPDATE'	=> '<strong>Đã cập nhật thông tin về thành viên</strong><br />» %s',

	'LOG_USER_ACTIVE_USER'		=> '<strong>Tài khoản thành viên đã được kích hoạt</strong>',
	'LOG_USER_DEL_AVATAR_USER'	=> '<strong>Hình đại diện của thành viên đã được gỡ bỏ</strong>',
	'LOG_USER_DEL_SIG_USER'		=> '<strong>Chữ ký cá nhân của thành viên đã được gỡ bỏ</strong>',
	'LOG_USER_FEEDBACK'			=> '<strong>Đã thêm phản hồi thành viên</strong><br />» %s',
	'LOG_USER_GENERAL'			=> '<strong>Đã thêm vào mục:</strong><br />» %s',
	'LOG_USER_INACTIVE_USER'	=> '<strong>Tài khoản thành viên đã ngưng kích hoạt</strong>',
	'LOG_USER_LOCK'				=> '<strong>Thành viên đã khóa chủ đề của mình</strong><br />» %s',
	'LOG_USER_MOVE_POSTS_USER'	=> '<strong>Đã di chuyển tất cả bài viết đến chuyên mục</strong><br />» %s',
	'LOG_USER_REACTIVATE_USER'	=> '<strong>Đã yêu cầu kích hoạt lại tài khoản thành viên</strong>',
	'LOG_USER_UNLOCK'			=> '<strong>Thành viên đã mở khóa chủ đề của mình</strong><br />» %s',
	'LOG_USER_WARNING'			=> '<strong>Đã thêm cảnh cáo thành viên</strong><br />» %s',
	'LOG_USER_WARNING_BODY'		=> '<strong>Những cảnh cáo dành cho thành viên này</strong><br />» %s',

	'LOG_USER_GROUP_CHANGE'			=> '<strong>Thành viên đã thay đổi nhóm mặc định</strong><br />» %s',
	'LOG_USER_GROUP_DEMOTE'			=> '<strong>Thành viên đã bị giáng chức người điều hành từ nhóm</strong><br />» %s',
	'LOG_USER_GROUP_JOIN'			=> '<strong>Thành viên đã tham gia vào nhóm</strong><br />» %s',
	'LOG_USER_GROUP_JOIN_PENDING'	=> '<strong>Thành viên đã tham gia vào nhóm và đang chờ quyết định chấp thuận</strong><br />» %s',
	'LOG_USER_GROUP_RESIGN'			=> '<strong>Thành viên đã từ bỏ tư cách thành viên trong nhóm</strong><br />» %s',

	'LOG_WORD_ADD'			=> '<strong>Đã thêm từ kiểm duyệt</strong><br />» %s',
	'LOG_WORD_DELETE'		=> '<strong>Đã xóa từ kiểm duyệt</strong><br />» %s',
	'LOG_WORD_EDIT'			=> '<strong>Đã sửa từ kiểm duyệt</strong><br />» %s',
));

?>