.class public Lcom/vkontakte/android/cache/CacheTables;
.super Ljava/lang/Object;
.source "CacheTables.java"


# static fields
.field public static final AUDIO_DB_VERSION:I = 0x3

.field public static final CHAT_DB_VERSION:I = 0x2

.field public static final DIALOGS_DB_VERSION:I = 0x2

.field public static final FRIENDS_DB_VERSION:I = 0x4

.field public static final GROUPS_DB_VERSION:I = 0x2

.field public static final POSTS_DB_VERSION:I = 0x6


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
    .line 34
    const-string v0, "DROP TABLE IF EXISTS `files`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    const-string v0, "CREATE TABLE `files` (oid int, aid int, title varchar(500), artist varchar(500), duration int, lastplay int, user bool, lyrics_id int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static createChat(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "peerID"    # I

    .prologue
    .line 39
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

    .line 40
    return-void
.end method

.method public static createChatStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    const-string v0, "CREATE TABLE IF NOT EXISTS `stats` (peer int, last_update int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static createDialogs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 29
    const-string v0, "DROP TABLE IF EXISTS `dialogslist`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    const-string v0, "CREATE TABLE `dialogslist` (uid int, photo varchar(500), title varchar(500), lastmsg varchar(500), time int, readstate bool, attach_type int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static createFriends(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    const-string v0, "DROP TABLE IF EXISTS `friendlist`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "CREATE TABLE `friendlist` (uid int unique, firstname varchar(150), lastname varchar(150), photo varchar(200), bday int, bmonth int, byear int, name_r varchar(200))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static createGroups(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS `groups`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "CREATE TABLE `groups` (id int, title text, photo varchar(500), type int, event_time int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static createPosts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 15
    const-string v0, "DROP TABLE IF EXISTS `news`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 16
    const-string v0, "CREATE TABLE `news` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    const-string v0, "DROP TABLE IF EXISTS `news_comments`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    const-string v0, "CREATE TABLE `news_comments` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text text, last_comment_name varchar(150), last_comment_photo varchar(200), last_comment_text text)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    const-string v0, "DROP TABLE IF EXISTS `wall`"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string v0, "CREATE TABLE `wall` (pid int, uid int, text text, time int, likes int, comments int, username varchar(150) not null, userphoto varchar(200) not null, retweet_uid int, retweet_username varchar(150), attachments blob, flags int, retweet_text int)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method
