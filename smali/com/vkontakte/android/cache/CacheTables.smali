.class public Lcom/vkontakte/android/cache/CacheTables;
.super Ljava/lang/Object;
.source "CacheTables.java"


# static fields
.field public static final AUDIO_DB_VERSION:I = 0x5

.field public static final CHAT_DB_VERSION:I = 0x2

.field public static final DIALOGS_DB_VERSION:I = 0x3

.field public static final FRIENDS_DB_VERSION:I = 0x4

.field public static final GROUPS_DB_VERSION:I = 0x3

.field public static final MAIN_DB_VERSION:I = 0x14

.field public static final POSTS_DB_VERSION:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAudio(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    const-string v0, "DROP TABLE IF EXISTS `files`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "CREATE TABLE `files` (oid int, aid int, title varchar(500), artist varchar(500), duration int, lastplay int, user bool, lyrics_id int, cover_version int not null default 0, lyrics text, file_size int not null default -1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static createCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    const-string v0, "DROP TABLE IF EXISTS `users`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "DROP TABLE IF EXISTS `birthdays`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TABLE IF EXISTS `friendlists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "DROP TABLE IF EXISTS `users_friendlists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "DROP TABLE IF EXISTS `messages`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "DROP TABLE IF EXISTS `chats`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "DROP TABLE IF EXISTS `chats_users`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    const-string v0, "DROP VIEW IF EXISTS `dialogs`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "DROP TABLE IF EXISTS `groups`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "DROP TABLE IF EXISTS `news`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "DROP TABLE IF EXISTS `news_comments`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "DROP TABLE IF EXISTS `wall`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "DROP TABLE IF EXISTS `wall_drafts`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP TABLE IF EXISTS `api_queue`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "DROP INDEX IF EXISTS `messages_mid`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP INDEX IF EXISTS `messages_time`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "DROP INDEX IF EXISTS `messages_peer`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "DROP INDEX IF EXISTS `chats_users_cid`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "CREATE TABLE `users` (uid int not null unique, firstname varchar(150), lastname varchar(150), photo_small varchar(200), photo_big varchar(200), is_friend bool, f bool, last_updated int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v0, "CREATE TABLE `birthdays` (uid int unique, name_r varchar(150), bday int not null, bmonth int not null, byear int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "CREATE TABLE `friendlists` (lid int unique, name varchar(200))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    const-string v0, "CREATE TABLE `users_friendlists` (uid int not null, lid int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    const-string v0, "CREATE TABLE `messages` (mid int unique, peer int not null, sender int not null, text text, time int not null, attachments blob, fwd blob, flags int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "CREATE TABLE `chats` (cid int unique, title varchar(500), admin int not null, photo varchar(500), need_update_users bool not null default 1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "CREATE TABLE `chats_users` (cid int not null, uid int not null, inviter int not null, invited int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "CREATE VIEW `dialogs` AS SELECT messages.*, users.*, chats.* FROM messages JOIN messages AS m2 ON messages.mid=m2.mid LEFT JOIN users ON messages.peer=uid LEFT JOIN chats ON messages.peer-2000000000=cid GROUP BY messages.peer HAVING messages.time=max(m2.time)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "CREATE INDEX `messages_mid` ON messages (peer)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "CREATE INDEX `messages_time` ON messages (time)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    const-string v0, "CREATE INDEX `messages_peer` ON messages (peer)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    const-string v0, "CREATE INDEX `chats_users_cid` ON chats_users (cid)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "CREATE TABLE `groups` (gid int not null unique, name varchar(200), activity varchar(200), count int not null, type int not null, closed int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE `api_queue` (id INTEGER PRIMARY KEY, method varchar(200), args blob)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static createChat(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "peerID"    # I

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS `chat"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "` (mid int, sender int, text text, time int, attachments blob, readstate bool)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static createChatStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    const-string v0, "CREATE TABLE IF NOT EXISTS `stats` (peer int, last_update int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static createDialogs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 33
    const-string v0, "DROP TABLE IF EXISTS `dialogslist`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    const-string v0, "CREATE TABLE `dialogslist` (uid int, photo varchar(500), title varchar(500), lastmsg varchar(500), time int, readstate bool, attach_type int, photo2 varchar(500))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static createFriends(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 28
    const-string v0, "DROP TABLE IF EXISTS `friendlist`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    const-string v0, "CREATE TABLE `friendlist` (uid int unique, firstname varchar(150), lastname varchar(150), photo varchar(200), bday int, bmonth int, byear int, name_r varchar(200))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static createGroups(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    const-string v0, "DROP TABLE IF EXISTS `groups`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "CREATE TABLE `groups` (id int, title text, photo varchar(500), type int, event_time int, closed int, admin bool, admin_level int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static createPosts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    const-string v0, "DROP TABLE IF EXISTS `news`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    const-string v0, "DROP TABLE IF EXISTS `news_comments`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    const-string v0, "DROP TABLE IF EXISTS `wall`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string v0, "DROP TABLE IF EXISTS `feed_lists`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    const-string v0, "CREATE TABLE `news` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text, retweet_user_photo varchar(150), retweet_orig_id int, retweet_orig_time int, retweets int, retweet_type int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    const-string v0, "CREATE TABLE `news_comments` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text, retweet_user_photo varchar(150), retweet_orig_id int, retweet_orig_time int, retweets int, retweet_type int, last_comment_name varchar(150), last_comment_photo varchar(200), last_comment_text text, last_comment_time int not null)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    const-string v0, "CREATE TABLE `wall` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text, retweet_user_photo varchar(150), retweet_orig_id int, retweet_orig_time int, retweets int, retweet_type int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    const-string v0, "CREATE TABLE `feed_lists` (lid int not null, title varchat(500))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    return-void
.end method
