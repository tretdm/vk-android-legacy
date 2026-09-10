.class public Lcom/vkontakte/android/data/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;,
        Lcom/vkontakte/android/data/Messages$GetDialogsCallback;,
        Lcom/vkontakte/android/data/Messages$GetMessagesCallback;,
        Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;,
        Lcom/vkontakte/android/data/Messages$SearchCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MESSAGE_ID_CHANGED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_ID_CHANGED"

.field public static final ACTION_SEND_FAILED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_SEND_FAILED"

.field private static final DEBUG:Z

.field public static counterLock:Ljava/util/concurrent/Semaphore;

.field private static dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static histories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private static lastUpdated:J

.field private static loadDlgsReq:Lcom/vkontakte/android/APIRequest;

.field private static pendingUploads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static sendLock:Lcom/vkontakte/android/background/CountingLock;

.field public static updateLock:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    .line 70
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 72
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    .line 73
    new-instance v0, Lcom/vkontakte/android/background/CountingLock;

    invoke-direct {v0}, Lcom/vkontakte/android/background/CountingLock;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(J)V
    .locals 0

    .prologue
    .line 70
    sput-wide p0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-void
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 70
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 71
    sput-object p0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$4()Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 908
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 933
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$8(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 0

    .prologue
    .line 991
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    return-void
.end method

.method public static add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
    .locals 17
    .param p0, "msg"    # Lcom/vkontakte/android/Message;
    .param p1, "peerProfile"    # Lcom/vkontakte/android/UserProfile;
    .param p2, "senderPhoto"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p2, :cond_0

    const-string v13, "vk"

    const-string v14, "sender photo is null!"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v13, :cond_1

    :try_start_0
    sget-object v13, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 79
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sput-wide v13, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 80
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v14, "msg"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "updated"

    sget-wide v15, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    sget-object v13, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 82
    sget-object v13, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    sget-object v13, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 85
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v3, 0x1

    .line 86
    .local v3, "appended":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_6

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v13, :cond_3

    sget-object v13, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 108
    :cond_3
    new-instance v11, Lcom/vkontakte/android/data/Messages$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/vkontakte/android/data/Messages$1;-><init>(Lcom/vkontakte/android/Message;)V

    .line 119
    .local v11, "rr":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    if-ne v13, v14, :cond_a

    .line 120
    invoke-static {v11}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 123
    :goto_2
    if-nez v3, :cond_c

    .line 124
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v13, :cond_5

    .line 125
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 266
    :cond_5
    :goto_4
    return-void

    .line 89
    .end local v11    # "rr":Ljava/lang/Runnable;
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Message;

    iget v13, v13, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->time:I

    if-ge v13, v14, :cond_7

    .line 90
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_7
    const v9, 0x7fffffff

    .line 93
    .local v9, "prevTime":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v6, v13, :cond_8

    .line 100
    :goto_6
    const/4 v3, 0x0

    goto :goto_1

    .line 94
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/Message;->time:I

    if-lt v13, v9, :cond_9

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Message;

    iget v13, v13, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->time:I

    if-gt v13, v14, :cond_9

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 98
    :cond_9
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Message;

    iget v9, v13, Lcom/vkontakte/android/Message;->time:I

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 122
    .end local v6    # "i":I
    .end local v9    # "prevTime":I
    .restart local v11    # "rr":Ljava/lang/Runnable;
    :cond_a
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 125
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 126
    .local v4, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v14, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v14, v15, :cond_4

    .line 127
    iget v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    goto :goto_3

    .line 134
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_c
    :try_start_1
    sget-object v13, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_7
    const/4 v5, 0x0

    .line 136
    .local v5, "found":Z
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_f

    .line 155
    :goto_8
    sget-object v13, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    .line 157
    if-nez v5, :cond_5

    .line 158
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "didn\'t find dialog for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, "_unreadCount":I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v13, :cond_e

    .line 161
    const-string v13, "vk"

    const-string v14, "getting unread count from cache"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v13}, Lcom/vkontakte/android/cache/Cache;->getNumUnreadMessages(I)I

    move-result v2

    .line 163
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "result="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v13, -0x1

    if-ne v2, v13, :cond_e

    .line 165
    const/4 v13, 0x1

    new-array v10, v13, [I

    .line 166
    .local v10, "res":[I
    new-instance v13, Lcom/vkontakte/android/api/MessagesGetUnreadCount;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-direct {v13, v14}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;-><init>(I)V

    .line 167
    new-instance v14, Lcom/vkontakte/android/data/Messages$2;

    invoke-direct {v14, v10}, Lcom/vkontakte/android/data/Messages$2;-><init>([I)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;->setCallback(Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    .line 178
    invoke-virtual {v13}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 179
    const/4 v13, 0x0

    aget v2, v10, v13

    .line 185
    .end local v10    # "res":[I
    :cond_e
    move v12, v2

    .line 186
    .local v12, "unreadCount":I
    const-string v13, "vk"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Final unread count value "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p1, :cond_13

    .line 188
    new-instance v4, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v4}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 189
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 190
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 191
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 192
    iput v12, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 193
    :try_start_2
    sget-object v13, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :goto_9
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 195
    sget-object v13, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_4

    .line 136
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v12    # "unreadCount":I
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 137
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v14, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v14, v15, :cond_d

    .line 138
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 139
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 140
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v13, :cond_10

    .line 141
    iget v13, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 142
    :cond_10
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    const v9, 0x7fffffff

    .line 144
    .restart local v9    # "prevTime":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v6, v13, :cond_11

    .line 151
    :goto_b
    const/4 v5, 0x1

    .line 152
    goto/16 :goto_8

    .line 145
    :cond_11
    iget-object v13, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v13, v13, Lcom/vkontakte/android/Message;->time:I

    if-lt v13, v9, :cond_12

    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/DialogEntry;

    iget-object v13, v13, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v13, v13, Lcom/vkontakte/android/Message;->time:I

    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v14, v14, Lcom/vkontakte/android/Message;->time:I

    if-gt v13, v14, :cond_12

    .line 146
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int/lit8 v14, v6, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 149
    :cond_12
    sget-object v13, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/DialogEntry;

    iget-object v13, v13, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v9, v13, Lcom/vkontakte/android/Message;->time:I

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 197
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "i":I
    .end local v9    # "prevTime":I
    .restart local v2    # "_unreadCount":I
    .restart local v12    # "unreadCount":I
    :cond_13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v7, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/Message;->peer:I

    const v14, 0x77359400

    if-ge v13, v14, :cond_14

    .line 200
    new-instance v13, Lcom/vkontakte/android/data/Messages$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v12}, Lcom/vkontakte/android/data/Messages$3;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;I)V

    invoke-static {v7, v13}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto/16 :goto_4

    .line 226
    :cond_14
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/Message;->peer:I

    const v14, 0x77359400

    sub-int/2addr v13, v14

    new-instance v14, Lcom/vkontakte/android/data/Messages$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v12}, Lcom/vkontakte/android/data/Messages$4;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;I)V

    invoke-static {v13, v14}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto/16 :goto_4

    .line 193
    .end local v7    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    :catch_0
    move-exception v13

    goto/16 :goto_9

    .line 134
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "found":Z
    .end local v12    # "unreadCount":I
    :catch_1
    move-exception v13

    goto/16 :goto_7

    .line 78
    .end local v3    # "appended":Z
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v11    # "rr":Ljava/lang/Runnable;
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method

.method public static applyActions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/cache/MessagesAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    const v5, 0x77359400

    .line 1118
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 1119
    sget-object v2, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1120
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :goto_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1122
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1134
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1135
    new-instance v2, Lcom/vkontakte/android/data/Messages$21;

    invoke-direct {v2}, Lcom/vkontakte/android/data/Messages$21;-><init>()V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1161
    return-void

    .line 1124
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1125
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-le v3, v5, :cond_2

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v3, v3, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_2

    .line 1126
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1127
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    :cond_2
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v3, v5, :cond_0

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1130
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1131
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v1    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private static broadcastNewMessage(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    const v2, 0x77359400

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    if-ge v1, v2, :cond_0

    .line 937
    new-instance v1, Lcom/vkontakte/android/data/Messages$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$14;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 970
    :goto_0
    return-void

    .line 949
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v1, v2

    new-instance v2, Lcom/vkontakte/android/data/Messages$15;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/data/Messages$15;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_0
.end method

.method public static createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ChatUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1299
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v3, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 1308
    :goto_1
    const-string v4, "|"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1309
    .local v2, "ph":Ljava/lang/String;
    return-object v2

    .line 1302
    .end local v2    # "ph":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 1303
    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_2

    .line 1301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1305
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    goto :goto_1
.end method

.method private static createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    .line 1271
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1272
    .local v0, "am":Landroid/app/ActivityManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 1273
    .local v3, "iconSize":I
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1274
    .local v5, "photo":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1275
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1276
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1277
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1278
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1279
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1280
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1281
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0xf

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0xf

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1282
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1283
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1284
    return-object v2

    .line 1272
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "iconSize":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    goto :goto_0
.end method

.method public static delete(Ljava/util/List;Z)V
    .locals 7
    .param p1, "onlyLocal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p0, "_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v0, "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1084
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1089
    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1090
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1095
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1096
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    if-nez p1, :cond_1

    .line 1097
    new-instance v4, Lcom/vkontakte/android/api/MessagesDelete;

    invoke-direct {v4, v2}, Lcom/vkontakte/android/api/MessagesDelete;-><init>(Ljava/util/List;)V

    .line 1098
    new-instance v5, Lcom/vkontakte/android/data/Messages$20;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/data/Messages$20;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesDelete;->setCallback(Lcom/vkontakte/android/api/MessagesDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 1109
    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1111
    :cond_1
    return-void

    .line 1084
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1085
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 1086
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1090
    .end local v1    # "id":I
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1091
    .restart local v1    # "id":I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "msg_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static deleteMessageLocally(I)V
    .locals 6
    .param p0, "mid"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1078
    new-array v2, v5, [Ljava/lang/Integer;

    .line 1044
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1045
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1046
    .local v0, "d":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, p0, :cond_0

    .line 1047
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1048
    move-object v1, v0

    .line 1049
    .local v1, "dlg":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    new-instance v3, Lcom/vkontakte/android/data/Messages$19;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/data/Messages$19;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-static {v2, v4, v5, v4, v3}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    goto :goto_0
.end method

.method public static getAllLoadedDialogs(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/DialogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    return-void
.end method

.method public static getById(I)Lcom/vkontakte/android/Message;
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 330
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getMessageByID(I)Lcom/vkontakte/android/Message;

    move-result-object v0

    .line 331
    .local v0, "m":Lcom/vkontakte/android/Message;
    if-eqz v0, :cond_0

    .line 345
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :goto_0
    return-object v0

    .line 332
    .restart local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/vkontakte/android/Message;

    .line 333
    .local v1, "res":[Lcom/vkontakte/android/Message;
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "messages.getById"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 334
    const-string v3, "message_ids"

    invoke-virtual {v2, v3, p0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/vkontakte/android/data/Messages$6;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/data/Messages$6;-><init>([Lcom/vkontakte/android/Message;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 345
    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static getChatAdmin(I)I
    .locals 1
    .param p0, "chatID"    # I

    .prologue
    .line 1114
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getChatAdmin(I)I

    move-result v0

    return v0
.end method

.method public static getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 3
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 973
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->needUpdateChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need update chat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 989
    :goto_0
    return-void

    .line 977
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/data/Messages$16;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$16;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 987
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 2
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 992
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChat;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetChat;-><init>(I)V

    .line 993
    new-instance v1, Lcom/vkontakte/android/data/Messages$17;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$17;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChat;->setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1019
    return-void
.end method

.method public static getChatUsersResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 269
    new-instance v1, Lcom/vkontakte/android/api/MessagesGetChat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/MessagesGetChat;-><init>(I)V

    .line 270
    new-instance v2, Lcom/vkontakte/android/data/Messages$5;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/data/Messages$5;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesGetChat;->setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 299
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public static getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 6
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "callback"    # Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 350
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v3, p0, p1

    if-lt v2, v3, :cond_1

    .line 351
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int v3, p0, p1

    invoke-virtual {v2, p0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 359
    invoke-interface {p2, v1}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 482
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_2
    return-void

    .line 353
    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 354
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "added "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v3, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v3, v0}, Lcom/vkontakte/android/DialogEntry;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/data/Messages$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/vkontakte/android/data/Messages$7;-><init>(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 481
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 351
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
    .locals 7
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "startMsgID"    # I
    .param p4, "callback"    # Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 586
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/data/Messages$11;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/data/Messages$11;-><init>(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 657
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 658
    return-void
.end method

.method public static getLastUpdated()J
    .locals 4

    .prologue
    .line 1196
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1197
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "msg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updated"

    sget-wide v2, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 1198
    :cond_0
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method public static getProfileResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 304
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 306
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 307
    const-string v6, "first_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 308
    const-string v6, "last_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 310
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const-string v6, "photo_100"

    :goto_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 311
    const-string v6, "sex"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v4

    :goto_1
    iput-boolean v6, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 312
    const-string v6, "is_friend"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_2
    iput-boolean v4, v2, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/vkontakte/android/UserProfile;

    const/4 v5, 0x0

    .line 313
    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 314
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 315
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 316
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 323
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :goto_3
    return-void

    .line 310
    .restart local v1    # "jp":Lorg/json/JSONObject;
    .restart local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    const-string v6, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v6, v5

    .line 311
    goto :goto_1

    :cond_2
    move v4, v5

    .line 312
    goto :goto_2

    .line 320
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v3

    .line 321
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static getShortcutIntent(Lcom/vkontakte/android/UserProfile;)Landroid/content/Intent;
    .locals 6
    .param p0, "profile"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 1288
    iget-object v3, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1289
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "vkontakte://vk.com/write"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1290
    .local v2, "sIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1291
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1293
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1295
    return-object v1
.end method

.method public static getUnreadCount(I)I
    .locals 8
    .param p0, "peer"    # I

    .prologue
    .line 538
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 539
    :goto_0
    :try_start_1
    sget-object v3, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    :goto_1
    :try_start_2
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 548
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 550
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getNumUnreadMessages(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 551
    .local v0, "cache":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 573
    sget-object v3, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 570
    .end local v0    # "cache":I
    :goto_2
    return v0

    .line 542
    :cond_1
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 543
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->peer:I

    if-ne v4, p0, :cond_0

    .line 544
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 545
    iget v0, v1, Lcom/vkontakte/android/DialogEntry;->unreadCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 573
    sget-object v3, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 554
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v0    # "cache":I
    :cond_2
    const/4 v3, 0x1

    :try_start_4
    new-array v2, v3, [I

    .line 555
    .local v2, "res":[I
    new-instance v3, Lcom/vkontakte/android/api/MessagesGetUnreadCount;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;-><init>(I)V

    .line 556
    new-instance v4, Lcom/vkontakte/android/data/Messages$9;

    invoke-direct {v4, v2}, Lcom/vkontakte/android/data/Messages$9;-><init>([I)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;->setCallback(Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 567
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    .line 569
    new-instance v5, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 570
    const/4 v3, 0x0

    aget v0, v2, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 573
    .end local v0    # "cache":I
    sget-object v3, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 571
    .end local v2    # "res":[I
    :catchall_0
    move-exception v3

    .line 573
    sget-object v4, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 574
    throw v3

    .line 539
    :catch_0
    move-exception v3

    goto :goto_1

    .line 538
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getUnreadCount(ILcom/vkontakte/android/data/Messages$GetUnreadCountCallback;)V
    .locals 1
    .param p0, "peer"    # I
    .param p1, "callback"    # Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;

    .prologue
    .line 578
    new-instance v0, Lcom/vkontakte/android/data/Messages$10;

    invoke-direct {v0, p1, p0}, Lcom/vkontakte/android/data/Messages$10;-><init>(Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;I)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method public static markAsRead(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/api/MessagesMarkAsRead;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesMarkAsRead;-><init>(Ljava/util/List;)V

    .line 1024
    new-instance v1, Lcom/vkontakte/android/data/Messages$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$18;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1041
    return-void
.end method

.method public static removeDialog(I)V
    .locals 4
    .param p0, "peer"    # I

    .prologue
    .line 1173
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->deleteDialog(I)V

    .line 1174
    sget-object v2, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    :goto_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1177
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1184
    :goto_1
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1185
    return-void

    .line 1178
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1179
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 1180
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1175
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static removeFromSending(Lcom/vkontakte/android/Message;)V
    .locals 5
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 909
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remove from sending: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sget-object v2, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 911
    sget-object v2, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 912
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 918
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 924
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 925
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 931
    .end local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_2
    return-void

    .line 912
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 913
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    iget v4, p0, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, v4, :cond_0

    .line 914
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 919
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    .restart local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 920
    .restart local v0    # "msg":Lcom/vkontakte/android/Message;
    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 921
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    :cond_5
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 927
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 928
    .restart local v0    # "msg":Lcom/vkontakte/android/Message;
    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    goto :goto_2
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1164
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "longpoll"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pts"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1165
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :goto_0
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1167
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1168
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1169
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1170
    return-void

    .line 1165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 1188
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->deleteAllMessages()V

    .line 1189
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1190
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1191
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    .line 1193
    :cond_0
    return-void
.end method

.method public static search(Ljava/lang/String;IILcom/vkontakte/android/data/Messages$SearchCallback;)V
    .locals 2
    .param p0, "q"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "callback"    # Lcom/vkontakte/android/data/Messages$SearchCallback;

    .prologue
    .line 1202
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearch;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/api/MessagesSearch;-><init>(Ljava/lang/String;II)V

    .line 1203
    new-instance v1, Lcom/vkontakte/android/data/Messages$22;

    invoke-direct {v1, p3}, Lcom/vkontakte/android/data/Messages$22;-><init>(Lcom/vkontakte/android/data/Messages$SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearch;->setCallback(Lcom/vkontakte/android/api/MessagesSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1268
    return-void
.end method

.method public static send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;
    .locals 15
    .param p0, "peer"    # I
    .param p1, "text"    # Ljava/lang/String;
    .param p4, "_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Ljava/util/ArrayList",
            "<*>;I)",
            "Lcom/vkontakte/android/Message;"
        }
    .end annotation

    .prologue
    .line 661
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .local p3, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11}, Lcom/vkontakte/android/Message;-><init>()V

    .line 662
    .local v11, "m":Lcom/vkontakte/android/Message;
    if-nez p4, :cond_5

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "longpoll"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tmp_msg_id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 663
    .local v7, "id":I
    :goto_0
    if-nez p4, :cond_0

    .line 664
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "longpoll"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tmp_msg_id"

    add-int/lit8 v3, v7, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 665
    :cond_0
    iput v7, v11, Lcom/vkontakte/android/Message;->id:I

    .line 666
    iput p0, v11, Lcom/vkontakte/android/Message;->peer:I

    .line 667
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq p0, v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v11, Lcom/vkontakte/android/Message;->out:Z

    .line 668
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v11, Lcom/vkontakte/android/Message;->sender:I

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    sub-int/2addr v1, v2

    iput v1, v11, Lcom/vkontakte/android/Message;->time:I

    .line 671
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 673
    iget-object v1, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 674
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 675
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v5, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_2

    .line 677
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 688
    :cond_2
    const/4 v6, 0x0

    .line 689
    .local v6, "geo":Lcom/vkontakte/android/GeoAttachment;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 697
    :goto_3
    const/4 v14, -0x1

    .line 698
    .local v14, "uploadId":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 710
    const/4 v1, -0x1

    if-ne v14, v1, :cond_d

    .line 712
    sget-object v1, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-object v1, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkontakte/android/background/CountingLock;->increment()V

    .line 714
    new-instance v1, Lcom/vkontakte/android/api/MessagesSend;

    move v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;I)V

    .line 715
    new-instance v2, Lcom/vkontakte/android/data/Messages$12;

    invoke-direct {v2, v11, v7}, Lcom/vkontakte/android/data/Messages$12;-><init>(Lcom/vkontakte/android/Message;I)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 744
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 795
    :goto_5
    const/4 v1, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 796
    return-object v11

    .end local v5    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "geo":Lcom/vkontakte/android/GeoAttachment;
    .end local v7    # "id":I
    .end local v14    # "uploadId":I
    :cond_5
    move/from16 v7, p4

    .line 662
    goto/16 :goto_0

    .line 667
    .restart local v7    # "id":I
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 677
    .restart local v5    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 678
    .local v9, "fm":Ljava/lang/Object;
    instance-of v1, v9, Lcom/vkontakte/android/Message;

    if-eqz v1, :cond_8

    move-object v1, v9

    .line 679
    check-cast v1, Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v3, v11, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    move-object v1, v9

    check-cast v1, Lcom/vkontakte/android/Message;

    invoke-virtual {v1}, Lcom/vkontakte/android/Message;->forward()Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_8
    instance-of v1, v9, Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v1, :cond_1

    move-object v1, v9

    .line 683
    check-cast v1, Lcom/vkontakte/android/Message$FwdMessage;

    iget v1, v1, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    iget-object v1, v11, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    check-cast v9, Lcom/vkontakte/android/Message$FwdMessage;

    .end local v9    # "fm":Ljava/lang/Object;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 689
    .restart local v6    # "geo":Lcom/vkontakte/android/GeoAttachment;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 690
    .local v8, "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v8, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v2, :cond_3

    .line 691
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v6, v8

    .line 692
    check-cast v6, Lcom/vkontakte/android/GeoAttachment;

    .line 693
    goto/16 :goto_3

    .line 698
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v14    # "uploadId":I
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 699
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_b

    move-object v1, v8

    .line 700
    check-cast v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v14, v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    .line 702
    :cond_b
    instance-of v1, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v1, :cond_c

    move-object v1, v8

    .line 703
    check-cast v1, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v14, v1, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    .line 705
    :cond_c
    instance-of v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_4

    .line 706
    check-cast v8, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    iget v14, v8, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    goto/16 :goto_4

    .line 746
    :cond_d
    iget-object v1, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 793
    sget-object v1, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/Message;

    invoke-direct {v2, v11}, Lcom/vkontakte/android/Message;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 746
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 747
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v2, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_10

    move-object v12, v8

    .line 748
    check-cast v12, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .line 749
    .local v12, "pa":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    iget v2, v12, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 750
    new-instance v10, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 751
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    const-string v2, "file"

    iget-object v3, v12, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v2, "id"

    iget v3, v12, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    const-string v2, "type"

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 758
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "pa":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    :cond_10
    instance-of v2, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v2, :cond_11

    move-object v12, v8

    .line 759
    check-cast v12, Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 760
    .local v12, "pa":Lcom/vkontakte/android/PendingDocumentAttachment;
    iget v2, v12, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 761
    new-instance v10, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 762
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    const-string v2, "file"

    iget-object v3, v12, Lcom/vkontakte/android/PendingDocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string v2, "id"

    iget v3, v12, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    const-string v2, "type"

    const/4 v3, 0x4

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    const-string v2, "no_notify"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 767
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 768
    .local v13, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_mehod"

    const-string v3, "docs.getWallUploadServer"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string v2, "req_params"

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 770
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 773
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v12    # "pa":Lcom/vkontakte/android/PendingDocumentAttachment;
    .end local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_11
    instance-of v2, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v2, :cond_e

    move-object v12, v8

    .line 774
    check-cast v12, Lcom/vkontakte/android/PendingVideoAttachment;

    .line 775
    .local v12, "pa":Lcom/vkontakte/android/PendingVideoAttachment;
    iget v2, v12, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 776
    new-instance v10, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 777
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const-string v2, "file"

    iget-object v3, v12, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v2, "id"

    iget v3, v12, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    const-string v2, "no_notify"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 782
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 785
    .restart local v13    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "is_private"

    const-string v3, "1"

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v2, "name"

    iget-object v3, v12, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v2, "duration"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v2, "req_params"

    invoke-virtual {v10, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 789
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_6
.end method

.method public static setReadState(IZ)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    .line 485
    new-instance v0, Lcom/vkontakte/android/data/Messages$8;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/data/Messages$8;-><init>(IZ)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public static setReadStateUpto(IIZ)V
    .locals 6
    .param p0, "peer"    # I
    .param p1, "mid"    # I
    .param p2, "in"    # Z

    .prologue
    const/4 v5, 0x1

    .line 514
    if-nez p2, :cond_0

    sget-object v3, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v3}, Lcom/vkontakte/android/background/CountingLock;->await()V

    .line 515
    :cond_0
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    invoke-static {p1, p0, v5, p2}, Lcom/vkontakte/android/cache/Cache;->setMessageReadStateUpto(IIZZ)V

    .line 517
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 526
    :goto_1
    sget-object v3, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 527
    .local v2, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    if-eqz v2, :cond_3

    .line 528
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 534
    :cond_3
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 535
    return-void

    .line 517
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 518
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->peer:I

    if-ne v4, p0, :cond_1

    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->id:I

    if-gt v4, p1, :cond_1

    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    if-eq v4, p2, :cond_1

    .line 519
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iput-boolean v5, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 520
    const/4 v3, 0x0

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    goto :goto_1

    .line 528
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 529
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    if-gt v4, p1, :cond_2

    iget-boolean v4, v1, Lcom/vkontakte/android/Message;->out:Z

    if-eq v4, p2, :cond_2

    .line 530
    iput-boolean v5, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_2

    .line 515
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    .end local v2    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static uploadDone(ILcom/vkontakte/android/Attachment;)V
    .locals 14
    .param p0, "id"    # I
    .param p1, "result"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 800
    const/4 v12, 0x0

    .line 801
    .local v12, "msg":Lcom/vkontakte/android/Message;
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 832
    :goto_0
    if-nez v12, :cond_7

    .line 883
    :cond_1
    :goto_1
    return-void

    .line 801
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Message;

    .line 802
    .local v11, "m":Lcom/vkontakte/android/Message;
    const/4 v10, 0x0

    .line 803
    .local v10, "i":I
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 830
    :goto_3
    if-eqz v12, :cond_0

    goto :goto_0

    .line 803
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .line 804
    .local v7, "a":Lcom/vkontakte/android/Attachment;
    instance-of v0, v7, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v0, :cond_4

    move-object v0, v7

    .line 805
    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v0, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v0, p0, :cond_4

    .line 806
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/4 v0, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "userphoto"

    const-string v13, ""

    invoke-interface {v2, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 808
    move-object v12, v11

    .line 809
    goto :goto_3

    .line 812
    :cond_4
    instance-of v0, v7, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v0, :cond_5

    move-object v0, v7

    .line 813
    check-cast v0, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v0, v0, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    if-ne v0, p0, :cond_5

    .line 814
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 815
    const/4 v0, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "userphoto"

    const-string v13, ""

    invoke-interface {v2, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 816
    move-object v12, v11

    .line 817
    goto :goto_3

    .line 820
    :cond_5
    instance-of v0, v7, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v0, :cond_6

    .line 821
    check-cast v7, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v7    # "a":Lcom/vkontakte/android/Attachment;
    iget v0, v7, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    if-ne v0, p0, :cond_6

    .line 822
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 823
    const/4 v0, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v6, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "userphoto"

    const-string v13, ""

    invoke-interface {v2, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 824
    move-object v12, v11

    .line 825
    goto :goto_3

    .line 828
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 833
    .end local v10    # "i":I
    .end local v11    # "m":Lcom/vkontakte/android/Message;
    :cond_7
    iget-object v0, v12, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 836
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 837
    const/4 v5, 0x0

    .line 838
    .local v5, "geo":Lcom/vkontakte/android/GeoAttachment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v0, v12, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 840
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 847
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .local v4, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, v12, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 851
    move-object v11, v12

    .line 853
    .restart local v11    # "m":Lcom/vkontakte/android/Message;
    sget-object v0, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v0}, Lcom/vkontakte/android/background/CountingLock;->increment()V

    .line 854
    sget-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    new-instance v0, Lcom/vkontakte/android/api/MessagesSend;

    iget v1, v12, Lcom/vkontakte/android/Message;->peer:I

    iget-object v2, v12, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget v6, v12, Lcom/vkontakte/android/Message;->id:I

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;I)V

    .line 856
    new-instance v1, Lcom/vkontakte/android/data/Messages$13;

    invoke-direct {v1, v11}, Lcom/vkontakte/android/data/Messages$13;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_1

    .line 833
    .end local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    .end local v11    # "m":Lcom/vkontakte/android/Message;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 834
    .local v8, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v1, :cond_1

    instance-of v1, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-nez v1, :cond_1

    instance-of v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_8

    goto/16 :goto_1

    .line 840
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 841
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_9

    .line 842
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v5, v8

    .line 843
    check-cast v5, Lcom/vkontakte/android/GeoAttachment;

    .line 844
    goto :goto_4

    .line 848
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message$FwdMessage;

    .line 849
    .local v9, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, v9, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public static uploadFailed(I)V
    .locals 8
    .param p0, "id"    # I

    .prologue
    const/4 v7, 0x0

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "msg":Lcom/vkontakte/android/Message;
    sget-object v4, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 898
    :goto_0
    if-nez v3, :cond_4

    .line 906
    :goto_1
    return-void

    .line 887
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 888
    .local v2, "m":Lcom/vkontakte/android/Message;
    iget-object v5, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 896
    :goto_2
    if-eqz v3, :cond_0

    goto :goto_0

    .line 888
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 889
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_2

    .line 890
    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, p0, :cond_2

    .line 891
    move-object v3, v2

    .line 892
    goto :goto_2

    .line 899
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    sget-object v4, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 900
    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    .line 901
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 902
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "userphoto"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 903
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "id"

    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method
