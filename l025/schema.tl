---types---
// messageForwarded#a367e716 flags:int id:int fwd_from_id:int fwd_date:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
// contacts.foreignLinkUnknown#133421f8 = contacts.ForeignLink;
// contacts.foreignLinkRequested#a7801f47 has_phone:Bool = contacts.ForeignLink;
// contacts.foreignLinkMutual#1bea8ce1 = contacts.ForeignLink;
// contacts.myLinkEmpty#d22a1c60 = contacts.MyLink;
// contacts.myLinkRequested#6c69efee contact:Bool = contacts.MyLink;
// contacts.myLinkContact#c240ebd9 = contacts.MyLink;
// userSelf#7007b451 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus inactive:Bool = User;
userSelf#1c60e608 id:int first_name:string last_name:string username:string phone:string photo:UserProfilePhoto status:UserStatus = User;
// message#567699b3 flags:int id:int from_id:int to_id:Peer date:int message:string media:MessageMedia = Message;
message#a7ab1991 flags:# id:int from_id:int to_id:Peer fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int date:int message:string media:MessageMedia = Message;
// dialog#ab3a99ac peer:Peer top_message:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
dialog#c1dd804a peer:Peer top_message:int read_inbox_max_id:int unread_count:int notify_settings:PeerNotifySettings = Dialog;
// auth.checkedPhone#e300cc3b phone_registered:Bool phone_invited:Bool = auth.CheckedPhone;
auth.checkedPhone#811ea28e phone_registered:Bool = auth.CheckedPhone;
// contacts.link#eccea3f5 my_link:contacts.MyLink foreign_link:contacts.ForeignLink user:User = contacts.Link;
contacts.link#3ace484c my_link:ContactLink foreign_link:ContactLink user:User = contacts.Link;
// messages.statedMessages#969478bb messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessages;
messages.statedMessages#7d84b48 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessages;
// messages.statedMessage#d07ae726 message:Message chats:Vector<Chat> users:Vector<User> pts:int seq:int = messages.StatedMessage;
messages.statedMessage#96240c6a message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int = messages.StatedMessage;
// messages.sentMessage#d1f4d35c id:int date:int pts:int seq:int = messages.SentMessage;
messages.sentMessage#900eac40 id:int date:int pts:int pts_count:int = messages.SentMessage;
// messages.chats#8150cbd8 chats:Vector<Chat> users:Vector<User> = messages.Chats;
messages.chats#64ff9fd5 chats:Vector<Chat> = messages.Chats;
// messages.affectedHistory#b7de36f2 pts:int seq:int offset:int = messages.AffectedHistory;
messages.affectedHistory#b45c69d1 pts:int pts_count:int offset:int = messages.AffectedHistory;
// updateNewMessage#13abdb3 message:Message pts:int = Update;
updateNewMessage#1f2b0afd message:Message pts:int pts_count:int = Update;
// updateReadMessages#c6649e31 messages:Vector<int> pts:int = Update;
updateReadMessages#2e5ab668 messages:Vector<int> pts:int pts_count:int = Update;
// updateDeleteMessages#a92bfe26 messages:Vector<int> pts:int = Update;
updateDeleteMessages#a20db0e5 messages:Vector<int> pts:int pts_count:int = Update;
// updateContactLink#51a48a9a user_id:int my_link:contacts.MyLink foreign_link:contacts.ForeignLink = Update;
updateContactLink#9d2e67c5 user_id:int my_link:ContactLink foreign_link:ContactLink = Update;
// updateShortMessage#d3f45784 id:int from_id:int message:string pts:int date:int seq:int = Updates;
updateShortMessage#ed5c2127 flags:# id:int user_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// updateShortChatMessage#2b2fbd4e id:int from_id:int chat_id:int message:string pts:int date:int seq:int = Updates;
updateShortChatMessage#52238b3c flags:# id:int from_id:int chat_id:int message:string pts:int pts_count:int date:int fwd_from_id:flags.2?int fwd_date:flags.2?int reply_to_msg_id:flags.3?int = Updates;
// config#7dae33e0 date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_big_size:int chat_size_max:int broadcast_size_max:int disabled_features:Vector<DisabledFeature> = Config;
config#3e6f732a date:int expires:int test_mode:Bool this_dc:int dc_options:Vector<DcOption> chat_size_max:int broadcast_size_max:int online_update_period_ms:int offline_blur_timeout_ms:int offline_idle_timeout_ms:int online_cloud_timeout_ms:int notify_cloud_delay_ms:int notify_default_delay_ms:int chat_big_size:int disabled_features:Vector<DisabledFeature> = Config;
// messages.statedMessagesLinks#3e74f5c6 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessages;
messages.statedMessagesLinks#51be5d19 messages:Vector<Message> chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessages;
// messages.statedMessageLink#a9af2881 message:Message chats:Vector<Chat> users:Vector<User> links:Vector<contacts.Link> pts:int seq:int = messages.StatedMessage;
messages.statedMessageLink#948a288 message:Message chats:Vector<Chat> users:Vector<User> pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.StatedMessage;
// messages.sentMessageLink#e9db4a3f id:int date:int pts:int seq:int links:Vector<contacts.Link> = messages.SentMessage;
messages.sentMessageLink#e923400d id:int date:int pts:int pts_count:int links:Vector<contacts.Link> seq:int = messages.SentMessage;
// documentAttributeSticker#fb0a5727 = DocumentAttribute;
documentAttributeSticker#994c9882 alt:string = DocumentAttribute;
contactSuggested#3de191a1 user_id:int mutual_contacts:int = ContactSuggested;
contacts.suggested#5649dcc5 results:Vector<ContactSuggested> users:Vector<User> = contacts.Suggested;
messages.messageEmpty#3f4e0648 = messages.Message;
updateReadHistoryInbox#9961fd5c peer:Peer max_id:int pts:int pts_count:int = Update;
updateReadHistoryOutbox#2f2f21bf peer:Peer max_id:int pts:int pts_count:int = Update;
messages.affectedMessages#84d19185 pts:int pts_count:int = messages.AffectedMessages;
contactLinkUnknown#5f4f9247 = ContactLink;
contactLinkNone#feedd3ad = ContactLink;
contactLinkHasPhone#268f3f59 = ContactLink;
contactLinkContact#d502c2d0 = ContactLink;
---functions---
// messages.readHistory#eed884c6 peer:InputPeer max_id:int offset:int read_contents:Bool = messages.AffectedHistory;
messages.readHistory#b04f2510 peer:InputPeer max_id:int offset:int = messages.AffectedHistory;
// messages.deleteMessages#14f2dd0a id:Vector<int> = Vector<int>;
messages.deleteMessages#a5f18925 id:Vector<int> = messages.AffectedMessages;
// messages.sendMessage#4cde0aab peer:InputPeer message:string random_id:long = messages.SentMessage;
messages.sendMessage#1ca852a1 peer:InputPeer reply_to_msg_id:int message:string random_id:long = messages.SentMessage;
// messages.sendMedia#a3c85d76 peer:InputPeer media:InputMedia random_id:long = messages.StatedMessage;
messages.sendMedia#fcee7fc0 peer:InputPeer reply_to_msg_id:int media:InputMedia random_id:long = messages.StatedMessage;
// messages.forwardMessages#514cd10f peer:InputPeer id:Vector<int> = messages.StatedMessages;
messages.forwardMessages#ded42045 peer:InputPeer id:Vector<int> random_id:Vector<long> = messages.StatedMessages;
// messages.readMessageContents#354b5bc2 id:Vector<int> = Vector<int>;
messages.readMessageContents#36a73f77 id:Vector<int> = messages.AffectedMessages;
contacts.getSuggested#cd773428 limit:int = contacts.Suggested;
messages.sendBroadcast#41bb0972 contacts:Vector<InputUser> message:string media:InputMedia = messages.StatedMessages;
