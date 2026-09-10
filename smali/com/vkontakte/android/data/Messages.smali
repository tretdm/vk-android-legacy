.class public Lcom/vkontakte/android/data/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;,
        Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;,
        Lcom/vkontakte/android/data/Messages$GetMessagesCallback;,
        Lcom/vkontakte/android/data/Messages$SearchCallback;,
        Lcom/vkontakte/android/data/Messages$GetDialogsCallback;
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

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    .line 71
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 73
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    .line 74
    new-instance v0, Lcom/vkontakte/android/background/CountingLock;

    invoke-direct {v0}, Lcom/vkontakte/android/background/CountingLock;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 62
    sput-object p0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-object p0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 62
    sput-wide p0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$600(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    return-void
.end method

.method public static add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
    .locals 18
    .param p0, "msg"    # Lcom/vkontakte/android/Message;
    .param p1, "peerProfile"    # Lcom/vkontakte/android/UserProfile;
    .param p2, "senderPhoto"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p2, :cond_0

    const-string v14, "vk"

    const-string v15, "sender photo is null!"

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v14, :cond_1

    :try_start_0
    sget-object v14, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 81
    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v15, "msg"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "updated"

    sget-wide v16, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    sget-object v14, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 83
    sget-object v14, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    sget-object v14, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 86
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v3, 0x1

    .line 87
    .local v3, "appended":Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v14, :cond_3

    sget-object v14, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->release()V

    .line 109
    :cond_3
    new-instance v12, Lcom/vkontakte/android/data/Messages$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vkontakte/android/data/Messages$1;-><init>(Lcom/vkontakte/android/Message;)V

    .line 120
    .local v12, "rr":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    if-ne v14, v15, :cond_9

    .line 121
    invoke-static {v12}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 124
    :goto_2
    if-nez v3, :cond_a

    .line 125
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v14, :cond_10

    .line 126
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 127
    .local v4, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v14, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v14, v15, :cond_4

    .line 128
    iget v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    goto :goto_3

    .line 90
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "rr":Ljava/lang/Runnable;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message;

    iget v14, v14, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->time:I

    if-ge v14, v15, :cond_6

    .line 91
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_6
    const v10, 0x7fffffff

    .line 94
    .local v10, "prevTime":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_7

    .line 95
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->time:I

    if-lt v14, v10, :cond_8

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message;

    iget v14, v14, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->time:I

    if-gt v14, v15, :cond_8

    .line 96
    move-object/from16 v0, p0

    invoke-virtual {v9, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 99
    :cond_8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message;

    iget v10, v14, Lcom/vkontakte/android/Message;->time:I

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 123
    .end local v6    # "i":I
    .end local v10    # "prevTime":I
    .restart local v12    # "rr":Ljava/lang/Runnable;
    :cond_9
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 135
    :cond_a
    :try_start_1
    sget-object v14, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_5
    const/4 v5, 0x0

    .line 137
    .local v5, "found":Z
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 138
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v14, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v14, v15, :cond_b

    .line 139
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 140
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v14, :cond_c

    .line 142
    iget v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 143
    :cond_c
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    const v10, 0x7fffffff

    .line 145
    .restart local v10    # "prevTime":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_6
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_d

    .line 146
    iget-object v14, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v14, v14, Lcom/vkontakte/android/Message;->time:I

    if-lt v14, v10, :cond_11

    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/DialogEntry;

    iget-object v14, v14, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v14, v14, Lcom/vkontakte/android/Message;->time:I

    iget-object v15, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v15, v15, Lcom/vkontakte/android/Message;->time:I

    if-gt v14, v15, :cond_11

    .line 147
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int/lit8 v15, v6, -0x1

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v14, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    :cond_d
    const/4 v5, 0x1

    .line 156
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "i":I
    .end local v10    # "prevTime":I
    :cond_e
    sget-object v14, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->release()V

    .line 158
    if-nez v5, :cond_10

    .line 159
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "didn\'t find dialog for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "_unreadCount":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v14, :cond_f

    .line 162
    const-string v14, "vk"

    const-string v15, "getting unread count from cache"

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v14}, Lcom/vkontakte/android/cache/Cache;->getNumUnreadMessages(I)I

    move-result v2

    .line 164
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v14, -0x1

    if-ne v2, v14, :cond_f

    .line 166
    const/4 v14, 0x1

    new-array v11, v14, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v11, v14

    .line 167
    .local v11, "res":[I
    new-instance v14, Lcom/vkontakte/android/api/MessagesGetUnreadCount;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-direct {v14, v15}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;-><init>(I)V

    new-instance v15, Lcom/vkontakte/android/data/Messages$2;

    invoke-direct {v15, v11}, Lcom/vkontakte/android/data/Messages$2;-><init>([I)V

    invoke-virtual {v14, v15}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;->setCallback(Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v14

    invoke-virtual {v14}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 180
    const/4 v14, 0x0

    aget v2, v11, v14

    .line 186
    .end local v11    # "res":[I
    :cond_f
    move v13, v2

    .line 187
    .local v13, "unreadCount":I
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Final unread count value "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz p1, :cond_12

    .line 189
    new-instance v4, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v4}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 190
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 191
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 193
    iput v13, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 194
    :try_start_2
    sget-object v14, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    :goto_7
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    sget-object v14, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v14}, Ljava/util/concurrent/Semaphore;->release()V

    .line 267
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "unreadCount":I
    :cond_10
    :goto_8
    return-void

    .line 150
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v5    # "found":Z
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "prevTime":I
    :cond_11
    sget-object v14, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/DialogEntry;

    iget-object v14, v14, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v10, v14, Lcom/vkontakte/android/Message;->time:I

    .line 145
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 198
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "i":I
    .end local v10    # "prevTime":I
    .restart local v2    # "_unreadCount":I
    .restart local v13    # "unreadCount":I
    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v8, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    const v15, 0x77359400

    if-ge v14, v15, :cond_13

    .line 201
    new-instance v14, Lcom/vkontakte/android/data/Messages$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1, v13}, Lcom/vkontakte/android/data/Messages$3;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;I)V

    invoke-static {v8, v14}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_8

    .line 227
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->peer:I

    const v15, 0x77359400

    sub-int/2addr v14, v15

    new-instance v15, Lcom/vkontakte/android/data/Messages$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1, v13}, Lcom/vkontakte/android/data/Messages$4;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;I)V

    invoke-static {v14, v15}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_8

    .line 194
    .end local v8    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    :catch_0
    move-exception v14

    goto :goto_7

    .line 135
    .end local v2    # "_unreadCount":I
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "found":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "unreadCount":I
    :catch_1
    move-exception v14

    goto/16 :goto_5

    .line 79
    .end local v3    # "appended":Z
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v12    # "rr":Ljava/lang/Runnable;
    :catch_2
    move-exception v14

    goto/16 :goto_0
.end method

.method public static applyActions(Ljava/util/ArrayList;)V
    .locals 7
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
    const v6, 0x77359400

    .line 1131
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 1132
    sget-object v3, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1133
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :goto_0
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1135
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/Cache;->getDialogs(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1138
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-le v3, v6, :cond_1

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v3, v3, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_1

    .line 1139
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1140
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ge v3, v6, :cond_0

    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1143
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1144
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1147
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    sget-object v3, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1148
    new-instance v3, Lcom/vkontakte/android/data/Messages$21;

    invoke-direct {v3}, Lcom/vkontakte/android/data/Messages$21;-><init>()V

    invoke-static {v2, v3}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1174
    return-void

    .line 1133
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method private static broadcastNewMessage(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    const v2, 0x77359400

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    if-ge v1, v2, :cond_0

    .line 945
    new-instance v1, Lcom/vkontakte/android/data/Messages$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$14;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 978
    :goto_0
    return-void

    .line 957
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
    .line 1312
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v3, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1315
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 1316
    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_1

    .line 1314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    :cond_1
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1318
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1321
    .end local v0    # "cu":Lcom/vkontakte/android/ChatUser;
    :cond_2
    const-string v4, "|"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 1322
    .local v2, "ph":Ljava/lang/String;
    return-object v2
.end method

.method private static createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v8, -0x1000000

    const/4 v9, 0x0

    .line 1284
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1285
    .local v0, "am":Landroid/app/ActivityManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 1286
    .local v3, "iconSize":I
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1287
    .local v5, "photo":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1288
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1289
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1290
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1291
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1292
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1293
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1294
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

    .line 1295
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1296
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1297
    return-object v2

    .line 1285
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
    .line 1094
    .local p0, "_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v0, "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1097
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1098
    .local v2, "id":I
    if-gez v2, :cond_0

    .line 1099
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1102
    .end local v2    # "id":I
    :cond_1
    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1104
    .restart local v2    # "id":I
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "msg_id"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 1108
    .end local v2    # "id":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    if-nez p1, :cond_3

    .line 1110
    new-instance v5, Lcom/vkontakte/android/api/MessagesDelete;

    invoke-direct {v5, v3}, Lcom/vkontakte/android/api/MessagesDelete;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vkontakte/android/data/Messages$20;

    invoke-direct {v6, v3}, Lcom/vkontakte/android/data/Messages$20;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/MessagesDelete;->setCallback(Lcom/vkontakte/android/api/MessagesDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1124
    :cond_3
    return-void
.end method

.method public static deleteMessageLocally(I)V
    .locals 7
    .param p0, "mid"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1057
    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1058
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1059
    .local v0, "d":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, p0, :cond_0

    .line 1060
    sget-object v3, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    move-object v1, v0

    .line 1062
    .local v1, "dlg":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    new-instance v4, Lcom/vkontakte/android/data/Messages$19;

    invoke-direct {v4, v1}, Lcom/vkontakte/android/data/Messages$19;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-static {v3, v5, v6, v5, v4}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1091
    .end local v0    # "d":Lcom/vkontakte/android/DialogEntry;
    .end local v1    # "dlg":Lcom/vkontakte/android/DialogEntry;
    :cond_1
    return-void
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
    .line 331
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    return-void
.end method

.method public static getById(I)Lcom/vkontakte/android/Message;
    .locals 5
    .param p0, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getMessageByID(I)Lcom/vkontakte/android/Message;

    move-result-object v0

    .line 336
    .local v0, "m":Lcom/vkontakte/android/Message;
    if-eqz v0, :cond_0

    .line 350
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :goto_0
    return-object v0

    .line 337
    .restart local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_0
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/vkontakte/android/Message;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    .line 338
    .local v1, "res":[Lcom/vkontakte/android/Message;
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "messages.getById"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "message_ids"

    invoke-virtual {v2, v3, p0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/data/Messages$6;

    invoke-direct {v3, v1}, Lcom/vkontakte/android/data/Messages$6;-><init>([Lcom/vkontakte/android/Message;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 350
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method public static getChatAdmin(I)I
    .locals 1
    .param p0, "chatID"    # I

    .prologue
    .line 1127
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getChatAdmin(I)I

    move-result v0

    return v0
.end method

.method public static getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 3
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 981
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->needUpdateChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need update chat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 997
    :goto_0
    return-void

    .line 985
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/data/Messages$16;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$16;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 2
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 1000
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChat;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetChat;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/data/Messages$17;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$17;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChat;->setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1032
    return-void
.end method

.method public static getChatUsersResult(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 270
    new-instance v1, Lcom/vkontakte/android/api/MessagesGetChat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/MessagesGetChat;-><init>(I)V

    new-instance v2, Lcom/vkontakte/android/data/Messages$5;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/data/Messages$5;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesGetChat;->setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 304
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public static getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 7
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "callback"    # Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 355
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v5, p0, p1

    if-lt v4, v5, :cond_2

    .line 356
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int v5, p0, p1

    invoke-virtual {v4, p0, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 359
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v4}, Lcom/vkontakte/android/data/Friends;->get(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v2

    .line 361
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    if-eqz v2, :cond_0

    .line 362
    iput-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 363
    :cond_0
    new-instance v4, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v4, v0}, Lcom/vkontakte/android/DialogEntry;-><init>(Lcom/vkontakte/android/DialogEntry;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 367
    invoke-interface {p2, v3}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 490
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_2
    return-void

    .line 370
    :cond_2
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/data/Messages$7;

    invoke-direct {v5, p0, p1, p2}, Lcom/vkontakte/android/data/Messages$7;-><init>(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 356
    :catch_0
    move-exception v4

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
    .line 594
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/data/Messages$11;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/data/Messages$11;-><init>(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 666
    return-void
.end method

.method public static getLastUpdated()J
    .locals 4

    .prologue
    .line 1209
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1210
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

    .line 1211
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

    .line 309
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 310
    .local v1, "jp":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 311
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    const-string v6, "id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 312
    const-string v6, "first_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 313
    const-string v6, "last_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 315
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    const-string v6, "photo_100"

    :goto_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 316
    const-string v6, "sex"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v6, v4

    :goto_1
    iput-boolean v6, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 317
    const-string v6, "is_friend"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_2
    iput-boolean v4, v2, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 318
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/vkontakte/android/UserProfile;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/List;Z)V

    .line 319
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 320
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 321
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 328
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :goto_3
    return-void

    .line 315
    .restart local v1    # "jp":Lorg/json/JSONObject;
    .restart local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    const-string v6, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v6, v5

    .line 316
    goto :goto_1

    :cond_2
    move v4, v5

    .line 317
    goto :goto_2

    .line 325
    .end local v1    # "jp":Lorg/json/JSONObject;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v3

    .line 326
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static getShortcutIntent(Lcom/vkontakte/android/UserProfile;)Landroid/content/Intent;
    .locals 6
    .param p0, "profile"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1302
    .local v0, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vkontakte://vk.com/write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1303
    .local v2, "sIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1304
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1306
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1308
    return-object v1
.end method

.method public static getUnreadCount(I)I
    .locals 9
    .param p0, "peer"    # I

    .prologue
    .line 546
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :goto_0
    :try_start_1
    sget-object v4, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :goto_1
    :try_start_2
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 551
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->peer:I

    if-ne v4, p0, :cond_0

    .line 552
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 553
    iget v0, v1, Lcom/vkontakte/android/DialogEntry;->unreadCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    sget-object v4, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    :goto_2
    return v0

    .line 556
    :cond_1
    :try_start_3
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 558
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getNumUnreadMessages(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 559
    .local v0, "cache":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 581
    sget-object v4, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 562
    :cond_2
    const/4 v4, 0x1

    :try_start_4
    new-array v3, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 563
    .local v3, "res":[I
    new-instance v4, Lcom/vkontakte/android/api/MessagesGetUnreadCount;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;-><init>(I)V

    new-instance v5, Lcom/vkontakte/android/data/Messages$9;

    invoke-direct {v5, v3}, Lcom/vkontakte/android/data/Messages$9;-><init>([I)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesGetUnreadCount;->setCallback(Lcom/vkontakte/android/api/MessagesGetUnreadCount$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 577
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/util/Pair;

    const/4 v5, 0x0

    new-instance v6, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 578
    const/4 v4, 0x0

    aget v0, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 581
    .end local v0    # "cache":I
    sget-object v4, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 580
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "res":[I
    :catchall_0
    move-exception v4

    .line 581
    sget-object v5, Lcom/vkontakte/android/data/Messages;->counterLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 547
    :catch_0
    move-exception v4

    goto :goto_1

    .line 546
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public static getUnreadCount(ILcom/vkontakte/android/data/Messages$GetUnreadCountCallback;)V
    .locals 1
    .param p0, "peer"    # I
    .param p1, "callback"    # Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;

    .prologue
    .line 586
    new-instance v0, Lcom/vkontakte/android/data/Messages$10;

    invoke-direct {v0, p1, p0}, Lcom/vkontakte/android/data/Messages$10;-><init>(Lcom/vkontakte/android/data/Messages$GetUnreadCountCallback;I)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 591
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
    .line 1036
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/api/MessagesMarkAsRead;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesMarkAsRead;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/vkontakte/android/data/Messages$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$18;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1054
    return-void
.end method

.method public static removeDialog(I)V
    .locals 4
    .param p0, "peer"    # I

    .prologue
    .line 1186
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->deleteDialog(I)V

    .line 1187
    sget-object v2, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_0
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1190
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 1192
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 1193
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1197
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_1
    sget-object v2, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1198
    return-void

    .line 1188
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static removeFromSending(Lcom/vkontakte/android/Message;)V
    .locals 6
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 917
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove from sending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    sget-object v3, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 919
    sget-object v3, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 920
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 921
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    iget v4, p0, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, v4, :cond_0

    .line 922
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 926
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v2, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 928
    .restart local v1    # "msg":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 929
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    :cond_3
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 933
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 939
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_4
    return-void

    .line 934
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 935
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 936
    .restart local v1    # "msg":Lcom/vkontakte/android/Message;
    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    goto :goto_1
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1177
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

    .line 1178
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_0
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1180
    sget-object v0, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1181
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1182
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1183
    return-void

    .line 1178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 1201
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->deleteAllMessages()V

    .line 1202
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 1203
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 1204
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    .line 1206
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
    .line 1215
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearch;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/api/MessagesSearch;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/vkontakte/android/data/Messages$22;

    invoke-direct {v1, p3}, Lcom/vkontakte/android/data/Messages$22;-><init>(Lcom/vkontakte/android/data/Messages$SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearch;->setCallback(Lcom/vkontakte/android/api/MessagesSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1281
    return-void
.end method

.method public static send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;
    .locals 16
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
    .line 669
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .local p3, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v12, Lcom/vkontakte/android/Message;

    invoke-direct {v12}, Lcom/vkontakte/android/Message;-><init>()V

    .line 670
    .local v12, "m":Lcom/vkontakte/android/Message;
    if-nez p4, :cond_3

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "longpoll"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tmp_msg_id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 671
    .local v7, "id":I
    :goto_0
    if-nez p4, :cond_0

    .line 672
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

    .line 673
    :cond_0
    iput v7, v12, Lcom/vkontakte/android/Message;->id:I

    .line 674
    move/from16 v0, p0

    iput v0, v12, Lcom/vkontakte/android/Message;->peer:I

    .line 675
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, p0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v12, Lcom/vkontakte/android/Message;->out:Z

    .line 676
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iput v1, v12, Lcom/vkontakte/android/Message;->sender:I

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    sub-int/2addr v1, v2

    iput v1, v12, Lcom/vkontakte/android/Message;->time:I

    .line 679
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 680
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 681
    iget-object v1, v12, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 683
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v5, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_5

    .line 685
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 686
    .local v9, "fm":Ljava/lang/Object;
    instance-of v1, v9, Lcom/vkontakte/android/Message;

    if-eqz v1, :cond_2

    move-object v1, v9

    .line 687
    check-cast v1, Lcom/vkontakte/android/Message;

    iget v1, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v2, v12, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    move-object v1, v9

    check-cast v1, Lcom/vkontakte/android/Message;

    invoke-virtual {v1}, Lcom/vkontakte/android/Message;->forward()Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    :cond_2
    instance-of v1, v9, Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v1, :cond_1

    move-object v1, v9

    .line 691
    check-cast v1, Lcom/vkontakte/android/Message$FwdMessage;

    iget v1, v1, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v1, v12, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    check-cast v9, Lcom/vkontakte/android/Message$FwdMessage;

    .end local v9    # "fm":Ljava/lang/Object;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v5    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "id":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_3
    move/from16 v7, p4

    .line 670
    goto/16 :goto_0

    .line 675
    .restart local v7    # "id":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 696
    .restart local v5    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    const/4 v6, 0x0

    .line 697
    .local v6, "geo":Lcom/vkontakte/android/GeoAttachment;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 698
    .local v8, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_6

    .line 699
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v6, v8

    .line 700
    check-cast v6, Lcom/vkontakte/android/GeoAttachment;

    .line 705
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    const/4 v15, -0x1

    .line 706
    .local v15, "uploadId":I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 707
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_9

    move-object v1, v8

    .line 708
    check-cast v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v15, v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    .line 710
    :cond_9
    instance-of v1, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v1, :cond_a

    move-object v1, v8

    .line 711
    check-cast v1, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v15, v1, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    .line 713
    :cond_a
    instance-of v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_8

    .line 714
    check-cast v8, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    iget v15, v8, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    goto :goto_3

    .line 718
    :cond_b
    const/4 v1, -0x1

    if-ne v15, v1, :cond_c

    .line 720
    sget-object v1, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v1, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkontakte/android/background/CountingLock;->increment()V

    .line 722
    new-instance v1, Lcom/vkontakte/android/api/MessagesSend;

    move/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;I)V

    new-instance v2, Lcom/vkontakte/android/data/Messages$12;

    invoke-direct {v2, v12, v7}, Lcom/vkontakte/android/data/Messages$12;-><init>(Lcom/vkontakte/android/Message;I)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 803
    :goto_4
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

    invoke-static {v12, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 804
    return-object v12

    .line 754
    :cond_c
    iget-object v1, v12, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 755
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_e

    move-object v13, v8

    .line 756
    check-cast v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .line 757
    .local v13, "pa":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    iget v1, v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 758
    new-instance v11, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 759
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "new"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string v1, "file"

    iget-object v2, v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v1, "id"

    iget v2, v13, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 766
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pa":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    :cond_e
    instance-of v1, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v1, :cond_f

    move-object v13, v8

    .line 767
    check-cast v13, Lcom/vkontakte/android/PendingDocumentAttachment;

    .line 768
    .local v13, "pa":Lcom/vkontakte/android/PendingDocumentAttachment;
    iget v1, v13, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 769
    new-instance v11, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v1, "new"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const-string v1, "file"

    iget-object v2, v13, Lcom/vkontakte/android/PendingDocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v1, "id"

    iget v2, v13, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v1, "no_notify"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 776
    .local v14, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_mehod"

    const-string v2, "docs.getWallUploadServer"

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v1, "req_params"

    invoke-virtual {v11, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 778
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 781
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pa":Lcom/vkontakte/android/PendingDocumentAttachment;
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    instance-of v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_d

    move-object v13, v8

    .line 782
    check-cast v13, Lcom/vkontakte/android/PendingVideoAttachment;

    .line 783
    .local v13, "pa":Lcom/vkontakte/android/PendingVideoAttachment;
    iget v1, v13, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 784
    new-instance v11, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v1, "new"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const-string v1, "file"

    iget-object v2, v13, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v1, "id"

    iget v2, v13, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    const-string v1, "no_notify"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 790
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 793
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "is_private"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v1, "name"

    iget-object v2, v13, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget-object v2, v2, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string v1, "duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v13, Lcom/vkontakte/android/PendingVideoAttachment;->vfile:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v1, "req_params"

    invoke-virtual {v11, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 797
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v11}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    .line 801
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pa":Lcom/vkontakte/android/PendingVideoAttachment;
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    sget-object v1, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/Message;

    invoke-direct {v2, v12}, Lcom/vkontakte/android/Message;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method public static setDnd(IIZ)V
    .locals 0
    .param p0, "peer"    # I
    .param p1, "time"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 1327
    return-void
.end method

.method public static setReadState(IZ)V
    .locals 1
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    .line 493
    new-instance v0, Lcom/vkontakte/android/data/Messages$8;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/data/Messages$8;-><init>(IZ)V

    invoke-static {v0}, Lcom/vkontakte/android/APIController;->runInBg(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public static setReadStateUpto(IIZ)V
    .locals 7
    .param p0, "peer"    # I
    .param p1, "mid"    # I
    .param p2, "in"    # Z

    .prologue
    const/4 v6, 0x1

    .line 522
    if-nez p2, :cond_0

    sget-object v4, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v4}, Lcom/vkontakte/android/background/CountingLock;->await()V

    .line 523
    :cond_0
    :try_start_0
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    invoke-static {p1, p0, v6, p2}, Lcom/vkontakte/android/cache/Cache;->setMessageReadStateUpto(IIZZ)V

    .line 525
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 526
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

    .line 527
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iput-boolean v6, v4, Lcom/vkontakte/android/Message;->readState:Z

    .line 528
    const/4 v4, 0x0

    iput v4, v0, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 534
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    sget-object v4, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 535
    .local v3, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    if-eqz v3, :cond_4

    .line 536
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 537
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    if-gt v4, p1, :cond_3

    iget-boolean v4, v2, Lcom/vkontakte/android/Message;->out:Z

    if-eq v4, p2, :cond_3

    .line 538
    iput-boolean v6, v2, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1

    .line 542
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    :cond_4
    sget-object v4, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 543
    return-void

    .line 523
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static uploadDone(ILcom/vkontakte/android/Attachment;)V
    .locals 16
    .param p0, "id"    # I
    .param p1, "result"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 808
    const/4 v15, 0x0

    .line 809
    .local v15, "msg":Lcom/vkontakte/android/Message;
    sget-object v1, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message;

    .line 810
    .local v14, "m":Lcom/vkontakte/android/Message;
    const/4 v11, 0x0

    .line 811
    .local v11, "i":I
    iget-object v1, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Attachment;

    .line 812
    .local v8, "a":Lcom/vkontakte/android/Attachment;
    instance-of v1, v8, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_4

    move-object v1, v8

    .line 813
    check-cast v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v1, v1, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, p0

    if-ne v1, v0, :cond_4

    .line 814
    iget-object v1, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 815
    const/4 v1, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v7, ""

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 816
    move-object v15, v14

    .line 838
    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    :cond_1
    :goto_1
    if-eqz v15, :cond_0

    .line 840
    .end local v11    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    if-nez v15, :cond_7

    .line 891
    :cond_3
    :goto_2
    return-void

    .line 820
    .restart local v8    # "a":Lcom/vkontakte/android/Attachment;
    .restart local v11    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    instance-of v1, v8, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v1, :cond_5

    move-object v1, v8

    .line 821
    check-cast v1, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v1, v1, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    move/from16 v0, p0

    if-ne v1, v0, :cond_5

    .line 822
    iget-object v1, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 823
    const/4 v1, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v7, ""

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 824
    move-object v15, v14

    .line 825
    goto :goto_1

    .line 828
    :cond_5
    instance-of v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_6

    .line 829
    check-cast v8, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v8    # "a":Lcom/vkontakte/android/Attachment;
    iget v1, v8, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    move/from16 v0, p0

    if-ne v1, v0, :cond_6

    .line 830
    iget-object v1, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 831
    const/4 v1, 0x0

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "userphoto"

    const-string v7, ""

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 832
    move-object v15, v14

    .line 833
    goto :goto_1

    .line 836
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 841
    .end local v11    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "m":Lcom/vkontakte/android/Message;
    :cond_7
    iget-object v1, v15, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 842
    .local v9, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v9, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-nez v1, :cond_3

    instance-of v1, v9, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-nez v1, :cond_3

    instance-of v1, v9, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v1, :cond_8

    goto :goto_2

    .line 844
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_9
    sget-object v1, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 845
    const/4 v6, 0x0

    .line 846
    .local v6, "geo":Lcom/vkontakte/android/GeoAttachment;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v4, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v1, v15, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 848
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 849
    .restart local v9    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v9, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_a

    .line 850
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v6, v9

    .line 851
    check-cast v6, Lcom/vkontakte/android/GeoAttachment;

    .line 855
    .end local v9    # "att":Lcom/vkontakte/android/Attachment;
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v5, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, v15, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message$FwdMessage;

    .line 857
    .local v10, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 859
    .end local v10    # "fm":Lcom/vkontakte/android/Message$FwdMessage;
    :cond_c
    move-object v14, v15

    .line 861
    .restart local v14    # "m":Lcom/vkontakte/android/Message;
    sget-object v1, Lcom/vkontakte/android/data/Messages;->sendLock:Lcom/vkontakte/android/background/CountingLock;

    invoke-virtual {v1}, Lcom/vkontakte/android/background/CountingLock;->increment()V

    .line 862
    sget-object v1, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    new-instance v1, Lcom/vkontakte/android/api/MessagesSend;

    iget v2, v15, Lcom/vkontakte/android/Message;->peer:I

    iget-object v3, v15, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget v7, v15, Lcom/vkontakte/android/Message;->id:I

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;I)V

    new-instance v2, Lcom/vkontakte/android/data/Messages$13;

    invoke-direct {v2, v14}, Lcom/vkontakte/android/data/Messages$13;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_2
.end method

.method public static uploadFailed(I)V
    .locals 10
    .param p0, "id"    # I

    .prologue
    const/4 v9, 0x0

    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, "msg":Lcom/vkontakte/android/Message;
    sget-object v6, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message;

    .line 896
    .local v4, "m":Lcom/vkontakte/android/Message;
    iget-object v6, v4, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 897
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_1

    .line 898
    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, p0, :cond_1

    .line 899
    move-object v5, v4

    .line 904
    :cond_2
    if-eqz v5, :cond_0

    .line 906
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    if-nez v5, :cond_4

    .line 914
    :goto_0
    return-void

    .line 907
    :cond_4
    sget-object v6, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    invoke-static {v5}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    .line 909
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 910
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "userphoto"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v9, v6}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 911
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "id"

    iget v7, v5, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
