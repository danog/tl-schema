---types---
// inputMediaUploadedThumbDocument#50d88cae flags:# file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputMediaUploadedPhoto#630c9af1 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
inputMediaUploadedPhoto#2f37e231 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> ttl_seconds:flags.1?int = InputMedia;
// inputMediaPhoto#e9bfb4f3 id:InputPhoto caption:string = InputMedia;
inputMediaPhoto#81fa373a flags:# id:InputPhoto caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaUploadedDocument#d070f1e9 flags:# file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
inputMediaUploadedDocument#e39621fd flags:# file:InputFile thumb:flags.2?InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> ttl_seconds:flags.1?int = InputMedia;
// inputMediaDocument#1a77f29c id:InputDocument caption:string = InputMedia;
inputMediaDocument#5acb668e flags:# id:InputDocument caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaPhotoExternal#b55f4f18 url:string caption:string = InputMedia;
inputMediaPhotoExternal#922aec1 flags:# url:string caption:string ttl_seconds:flags.0?int = InputMedia;
// inputMediaDocumentExternal#e5e9607c url:string caption:string = InputMedia;
inputMediaDocumentExternal#b6f74335 flags:# url:string caption:string ttl_seconds:flags.0?int = InputMedia;
// channel#cb44b1c flags:# creator:flags.0?true left:flags.2?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string admin_rights:flags.14?ChannelAdminRights banned_rights:flags.15?ChannelBannedRights = Chat;
channel#cb44b1c flags:# creator:flags.0?true left:flags.2?true editor:flags.3?true broadcast:flags.5?true verified:flags.7?true megagroup:flags.8?true restricted:flags.9?true democracy:flags.10?true signatures:flags.11?true min:flags.12?true id:int access_hash:flags.13?long title:string username:flags.6?string photo:ChatPhoto date:int version:int restriction_reason:flags.9?string admin_rights:flags.14?ChannelAdminRights banned_rights:flags.15?ChannelBannedRights = Chat;
// message#c09be45f flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int = Message;
message#90dddc11 flags:# out:flags.1?true mentioned:flags.4?true media_unread:flags.5?true silent:flags.13?true post:flags.14?true id:int from_id:flags.8?int to_id:Peer fwd_from:flags.2?MessageFwdHeader via_bot_id:flags.11?int reply_to_msg_id:flags.3?int date:int message:string media:flags.9?MessageMedia reply_markup:flags.6?ReplyMarkup entities:flags.7?Vector<MessageEntity> views:flags.10?int edit_date:flags.15?int post_author:flags.16?string = Message;
// messageMediaPhoto#3d8ce53d photo:Photo caption:string = MessageMedia;
messageMediaPhoto#b5223b0f flags:# photo:flags.0?Photo caption:flags.1?string ttl_seconds:flags.2?int = MessageMedia;
// messageMediaDocument#f3e02ea8 document:Document caption:string = MessageMedia;
messageMediaDocument#7c4414d3 flags:# document:flags.0?Document caption:flags.1?string ttl_seconds:flags.2?int = MessageMedia;
// contacts.importedContacts#ad524315 imported:Vector<ImportedContact> retry_contacts:Vector<long> users:Vector<User> = contacts.ImportedContacts;
contacts.importedContacts#77d01c3b imported:Vector<ImportedContact> popular_invites:Vector<PopularContact> retry_contacts:Vector<long> users:Vector<User> = contacts.ImportedContacts;
// upload.fileCdnRedirect#1508485a dc_id:int file_token:bytes encryption_key:bytes encryption_iv:bytes = upload.File;
upload.fileCdnRedirect#ea52fe5a dc_id:int file_token:bytes encryption_key:bytes encryption_iv:bytes cdn_file_hashes:Vector<CdnFileHash> = upload.File;
// messageFwdHeader#c786ddcb flags:# from_id:flags.0?int date:int channel_id:flags.1?int channel_post:flags.2?int = MessageFwdHeader;
messageFwdHeader#fadff4ac flags:# from_id:flags.0?int date:int channel_id:flags.1?int channel_post:flags.2?int post_author:flags.3?string = MessageFwdHeader;
messageActionScreenshotTaken#4792929b = MessageAction;
popularContact#5ce14175 client_id:long importers:int = PopularContact;
cdnFileHash#77eec38f offset:int limit:int hash:bytes = CdnFileHash;
---functions---
// upload.reuploadCdnFile#2e7a2020 file_token:bytes request_token:bytes = Bool;
upload.reuploadCdnFile#1af91c09 file_token:bytes request_token:bytes = Vector<CdnFileHash>;
// stickers.removeStickerFromSet#4255934 sticker:InputDocument = Bool;
stickers.removeStickerFromSet#f7760f51 sticker:InputDocument = messages.StickerSet;
// stickers.changeStickerPosition#4ed705ca sticker:InputDocument position:int = Bool;
stickers.changeStickerPosition#ffb6d4ca sticker:InputDocument position:int = messages.StickerSet;
messages.sendScreenshotNotification#c97df020 peer:InputPeer reply_to_msg_id:int random_id:long = Updates;
upload.getCdnFileHashes#f715c87b file_token:bytes offset:int = Vector<CdnFileHash>;
