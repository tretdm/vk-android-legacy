.class public Lcom/vkontakte/android/data/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;,
        Lcom/vkontakte/android/data/Messages$GetDialogsCallback;,
        Lcom/vkontakte/android/data/Messages$GetMessagesCallback;,
        Lcom/vkontakte/android/data/Messages$SearchCallback;
    }
.end annotation


# static fields
.field public static final ACTION_MESSAGE_ID_CHANGED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_ID_CHANGED"

.field public static final ACTION_SEND_FAILED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_SEND_FAILED"

.field private static final DEBUG:Z

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    .line 59
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(J)V
    .locals 0

    .prologue
    .line 59
    sput-wide p0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-void
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 59
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$4()Lcom/vkontakte/android/APIRequest;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 492
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 517
    invoke-static {p0}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$7(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 0

    .prologue
    .line 579
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    return-void
.end method

.method public static add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
    .locals 10
    .param p0, "msg"    # Lcom/vkontakte/android/Message;
    .param p1, "peerProfile"    # Lcom/vkontakte/android/UserProfile;
    .param p2, "senderPhoto"    # Ljava/lang/String;

    .prologue
    const v9, 0x77359400

    const/4 v8, 0x0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    .line 64
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "msg"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "updated"

    sget-wide v6, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    sget-object v4, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    iget v5, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    sget-object v4, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    iget v5, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    sget-object v4, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    iget v5, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "found":Z
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 82
    :goto_0
    if-nez v2, :cond_2

    .line 83
    if-eqz p1, :cond_4

    .line 84
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 85
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object p0, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 86
    iput-object p2, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 87
    iput-object p1, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 88
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 127
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 130
    return-void

    .line 71
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 72
    .restart local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v5, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v6, p0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v5, v6, :cond_1

    .line 73
    iput-object p0, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 74
    iput-object p2, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 75
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    sget-object v4, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    const/4 v2, 0x1

    .line 78
    goto :goto_0

    .line 90
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v4, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget v4, p0, Lcom/vkontakte/android/Message;->peer:I

    if-ge v4, v9, :cond_5

    .line 93
    new-instance v4, Lcom/vkontakte/android/data/Messages$1;

    invoke-direct {v4, p0, p2}, Lcom/vkontakte/android/data/Messages$1;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    goto :goto_1

    .line 104
    :cond_5
    iget v4, p0, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v4, v9

    new-instance v5, Lcom/vkontakte/android/data/Messages$2;

    invoke-direct {v5, p0, p2}, Lcom/vkontakte/android/data/Messages$2;-><init>(Lcom/vkontakte/android/Message;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto :goto_1
.end method

.method public static applyActions(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 654
    .local p0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/cache/MessagesAction;>;"
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->applyMessagesActions(Ljava/util/ArrayList;)I

    .line 655
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 656
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 657
    return-void
.end method

.method private static broadcastNewMessage(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    const v2, 0x77359400

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    if-ge v1, v2, :cond_0

    .line 521
    new-instance v1, Lcom/vkontakte/android/data/Messages$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$7;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 559
    :goto_0
    return-void

    .line 533
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/Message;->peer:I

    sub-int/2addr v1, v2

    new-instance v2, Lcom/vkontakte/android/data/Messages$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/data/Messages$8;-><init>(Lcom/vkontakte/android/Message;)V

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
    .line 791
    .local p0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v3, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 798
    const-string v4, "|"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, "ph":Ljava/lang/String;
    return-object v2

    .line 794
    .end local v2    # "ph":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ChatUser;

    .line 795
    .local v0, "cu":Lcom/vkontakte/android/ChatUser;
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-ne v4, v5, :cond_1

    .line 793
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    :cond_1
    iget-object v4, v0, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    iget-object v4, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 763
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 764
    .local v0, "am":Landroid/app/ActivityManager;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    .line 765
    .local v3, "iconSize":I
    :goto_0
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 766
    .local v5, "photo":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 767
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 768
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 769
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 770
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 771
    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 772
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 773
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

    .line 774
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 775
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 776
    return-object v2

    .line 764
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

.method public static delete(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 619
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "failed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 625
    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 631
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 632
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 633
    new-instance v3, Lcom/vkontakte/android/api/MessagesDelete;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/api/MessagesDelete;-><init>(Ljava/util/List;)V

    .line 634
    new-instance v4, Lcom/vkontakte/android/data/Messages$12;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/data/Messages$12;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/MessagesDelete;->setCallback(Lcom/vkontakte/android/api/MessagesDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 645
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 647
    :cond_1
    return-void

    .line 620
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 621
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 622
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    .end local v1    # "id":I
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 627
    .restart local v1    # "id":I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "msg_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 629
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v3, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
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
    .line 133
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    return-void
.end method

.method public static getChatAdmin(I)I
    .locals 1
    .param p0, "chatID"    # I

    .prologue
    .line 650
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->getChatAdmin(I)I

    move-result v0

    return v0
.end method

.method public static getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 3
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->needUpdateChat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "need update chat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {p0, p1}, Lcom/vkontakte/android/data/Messages;->getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 577
    :goto_0
    return-void

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/data/Messages$9;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$9;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getChatUsersFromApi(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V
    .locals 2
    .param p0, "chatID"    # I
    .param p1, "getChatUsersCallback"    # Lcom/vkontakte/android/data/Messages$GetChatUsersCallback;

    .prologue
    .line 580
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetChat;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesGetChat;-><init>(I)V

    .line 581
    new-instance v1, Lcom/vkontakte/android/data/Messages$10;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/data/Messages$10;-><init>(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetChat;->setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 595
    return-void
.end method

.method public static getDialogs(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V
    .locals 3
    .param p0, "offset"    # I
    .param p1, "count"    # I
    .param p2, "callback"    # Lcom/vkontakte/android/data/Messages$GetDialogsCallback;

    .prologue
    .line 137
    sget-object v1, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v2, p0, p1

    if-lt v1, v2, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    sget-object v1, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    add-int v2, p0, p1

    invoke-virtual {v1, p0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    invoke-interface {p2, v0}, Lcom/vkontakte/android/data/Messages$GetDialogsCallback;->onDialogsLoaded(Ljava/util/ArrayList;)V

    .line 237
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/data/Messages$3;

    invoke-direct {v2, p1, p0, p2}, Lcom/vkontakte/android/data/Messages$3;-><init>(IILcom/vkontakte/android/data/Messages$GetDialogsCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getHistory(IIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
    .locals 8
    .param p0, "peer"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "callback"    # Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    .prologue
    .line 261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 264
    .local v6, "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 265
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 266
    add-int v0, p1, p2

    invoke-virtual {v6, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    invoke-interface {p3, v4}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;)V

    .line 268
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Returinig peer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " history from RAM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v6    # "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :goto_0
    return-void

    .line 275
    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/data/Messages$4;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/data/Messages$4;-><init>(IIILjava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getLastUpdated()J
    .locals 4

    .prologue
    .line 688
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 689
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

    .line 690
    :cond_0
    sget-wide v0, Lcom/vkontakte/android/data/Messages;->lastUpdated:J

    return-wide v0
.end method

.method public static getShortcutIntent(Lcom/vkontakte/android/UserProfile;)Landroid/content/Intent;
    .locals 6
    .param p0, "profile"    # Lcom/vkontakte/android/UserProfile;

    .prologue
    .line 780
    iget-object v3, p0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->createShortcutIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 781
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

    .line 782
    .local v2, "sIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 785
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v3, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 787
    return-object v1
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
    .line 598
    .local p0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/api/MessagesMarkAsRead;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/MessagesMarkAsRead;-><init>(Ljava/util/List;)V

    .line 599
    new-instance v1, Lcom/vkontakte/android/data/Messages$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/data/Messages$11;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 616
    return-void
.end method

.method public static removeDialog(I)V
    .locals 4
    .param p0, "peer"    # I

    .prologue
    .line 667
    invoke-static {p0}, Lcom/vkontakte/android/cache/Cache;->deleteDialog(I)V

    .line 668
    sget-object v2, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v2, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 670
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 677
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 672
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v2, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p0, :cond_0

    .line 673
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static removeFromSending(Lcom/vkontakte/android/Message;)V
    .locals 5
    .param p0, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 493
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

    .line 494
    sget-object v2, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    sget-object v2, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 496
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 502
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v1, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 508
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 509
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 515
    .end local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_2
    return-void

    .line 496
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 497
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    iget v4, p0, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, v4, :cond_0

    .line 498
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    .restart local v1    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 504
    .restart local v0    # "msg":Lcom/vkontakte/android/Message;
    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    .end local v0    # "msg":Lcom/vkontakte/android/Message;
    :cond_5
    sget-object v2, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 511
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

    .line 512
    .restart local v0    # "msg":Lcom/vkontakte/android/Message;
    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->broadcastNewMessage(Lcom/vkontakte/android/Message;)V

    goto :goto_2
.end method

.method public static reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
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

    .line 661
    sget-object v0, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 662
    sget-object v0, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 663
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 664
    return-void
.end method

.method public static resetCache()V
    .locals 1

    .prologue
    .line 680
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->deleteAllMessages()V

    .line 681
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 683
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/data/Messages;->loadDlgsReq:Lcom/vkontakte/android/APIRequest;

    .line 685
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
    .line 694
    new-instance v0, Lcom/vkontakte/android/api/MessagesSearch;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/api/MessagesSearch;-><init>(Ljava/lang/String;II)V

    .line 695
    new-instance v1, Lcom/vkontakte/android/data/Messages$13;

    invoke-direct {v1, p3}, Lcom/vkontakte/android/data/Messages$13;-><init>(Lcom/vkontakte/android/data/Messages$SearchCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSearch;->setCallback(Lcom/vkontakte/android/api/MessagesSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 760
    return-void
.end method

.method public static send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/vkontakte/android/Message;
    .locals 13
    .param p0, "peer"    # I
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;",
            "Ljava/util/ArrayList",
            "<*>;)",
            "Lcom/vkontakte/android/Message;"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .local p3, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    new-instance v10, Lcom/vkontakte/android/Message;

    invoke-direct {v10}, Lcom/vkontakte/android/Message;-><init>()V

    .line 313
    .local v10, "m":Lcom/vkontakte/android/Message;
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "longpoll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tmp_msg_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 314
    .local v8, "id":I
    iput v8, v10, Lcom/vkontakte/android/Message;->id:I

    .line 315
    iput p0, v10, Lcom/vkontakte/android/Message;->peer:I

    .line 316
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-eq p0, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v10, Lcom/vkontakte/android/Message;->out:Z

    .line 317
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    iput v0, v10, Lcom/vkontakte/android/Message;->sender:I

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sget v1, Lcom/vkontakte/android/Global;->timeDiff:I

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/vkontakte/android/Message;->time:I

    .line 319
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time diff = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "longpoll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tmp_msg_id"

    add-int/lit8 v2, v8, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    invoke-virtual {v10, p1}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 323
    iget-object v0, v10, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v4, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_1

    .line 327
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 338
    :cond_1
    const/4 v5, 0x0

    .line 339
    .local v5, "geo":Lcom/vkontakte/android/GeoAttachment;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 347
    :goto_2
    const/4 v12, -0x1

    .line 348
    .local v12, "uploadId":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 354
    const/4 v0, -0x1

    if-ne v12, v0, :cond_9

    .line 355
    new-instance v0, Lcom/vkontakte/android/api/MessagesSend;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;)V

    .line 356
    new-instance v1, Lcom/vkontakte/android/data/Messages$5;

    invoke-direct {v1, v10}, Lcom/vkontakte/android/data/Messages$5;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 381
    sget-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_4
    const/4 v0, 0x0

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 399
    return-object v10

    .line 316
    .end local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    .end local v12    # "uploadId":I
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 327
    .restart local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 328
    .local v7, "fm":Ljava/lang/Object;
    instance-of v0, v7, Lcom/vkontakte/android/Message;

    if-eqz v0, :cond_6

    move-object v0, v7

    .line 329
    check-cast v0, Lcom/vkontakte/android/Message;

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, v10, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    move-object v0, v7

    check-cast v0, Lcom/vkontakte/android/Message;

    invoke-virtual {v0}, Lcom/vkontakte/android/Message;->forward()Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_6
    instance-of v0, v7, Lcom/vkontakte/android/Message$FwdMessage;

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 333
    check-cast v0, Lcom/vkontakte/android/Message$FwdMessage;

    iget v0, v0, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, v10, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    check-cast v7, Lcom/vkontakte/android/Message$FwdMessage;

    .end local v7    # "fm":Ljava/lang/Object;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 339
    .restart local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 340
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v5, v6

    .line 342
    check-cast v5, Lcom/vkontakte/android/GeoAttachment;

    .line 343
    goto/16 :goto_2

    .line 348
    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v12    # "uploadId":I
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 349
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_3

    .line 350
    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget v12, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    goto/16 :goto_3

    .line 383
    :cond_9
    iget-object v0, v10, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 396
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    new-instance v1, Lcom/vkontakte/android/Message;

    invoke-direct {v1, v10}, Lcom/vkontakte/android/Message;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 383
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 384
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_a

    move-object v11, v6

    .line 385
    check-cast v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .line 386
    .local v11, "pa":Lcom/vkontakte/android/ui/PendingPhotoAttachment;
    iget v1, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-static {v1}, Lcom/vkontakte/android/UploaderService;->hasTaskWithId(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 387
    new-instance v9, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "new"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v1, "file"

    iget-object v2, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->fileUri:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "id"

    iget v2, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5
.end method

.method public static setReadState(IZ)V
    .locals 8
    .param p0, "mid"    # I
    .param p1, "state"    # Z

    .prologue
    .line 240
    invoke-static {p0, p1}, Lcom/vkontakte/android/cache/Cache;->setMessageReadState(IZ)V

    .line 241
    sget-object v5, Lcom/vkontakte/android/data/Messages;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 248
    :goto_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 249
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 258
    :goto_1
    return-void

    .line 241
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 242
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v6, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v6, v6, Lcom/vkontakte/android/Message;->id:I

    if-ne v6, p0, :cond_0

    .line 243
    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iput-boolean p1, v5, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_0

    .line 249
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, "k":I
    sget-object v5, Lcom/vkontakte/android/data/Messages;->histories:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 251
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 252
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget v7, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v7, p0, :cond_4

    .line 253
    iput-boolean p1, v3, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1
.end method

.method public static uploadDone(ILcom/vkontakte/android/PhotoAttachment;)V
    .locals 14
    .param p0, "id"    # I
    .param p1, "result"    # Lcom/vkontakte/android/PhotoAttachment;

    .prologue
    const/4 v13, 0x0

    .line 403
    const/4 v11, 0x0

    .line 404
    .local v11, "msg":Lcom/vkontakte/android/Message;
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    :goto_0
    if-nez v11, :cond_4

    .line 467
    :goto_1
    return-void

    .line 404
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message;

    .line 405
    .local v10, "m":Lcom/vkontakte/android/Message;
    const/4 v9, 0x0

    .line 406
    .local v9, "i":I
    iget-object v1, v10, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 417
    :goto_3
    if-eqz v11, :cond_0

    goto :goto_0

    .line 406
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 407
    .local v6, "a":Lcom/vkontakte/android/Attachment;
    instance-of v2, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v2, :cond_3

    .line 408
    check-cast v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v6    # "a":Lcom/vkontakte/android/Attachment;
    iget v2, v6, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v2, p0, :cond_3

    .line 409
    iget-object v1, v10, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userphoto"

    const-string v12, ""

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v13, v1}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 411
    move-object v11, v10

    .line 412
    goto :goto_3

    .line 415
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 420
    .end local v9    # "i":I
    .end local v10    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 423
    sget-object v0, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    const/4 v5, 0x0

    .line 425
    .local v5, "geo":Lcom/vkontakte/android/GeoAttachment;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    iget-object v0, v11, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    .line 434
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v4, "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, v11, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 438
    move-object v10, v11

    .line 440
    .restart local v10    # "m":Lcom/vkontakte/android/Message;
    new-instance v0, Lcom/vkontakte/android/api/MessagesSend;

    iget v1, v11, Lcom/vkontakte/android/Message;->peer:I

    iget-object v2, v11, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/MessagesSend;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vkontakte/android/GeoAttachment;)V

    .line 441
    new-instance v1, Lcom/vkontakte/android/data/Messages$6;

    invoke-direct {v1, v10}, Lcom/vkontakte/android/data/Messages$6;-><init>(Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 466
    sget-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 420
    .end local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    .end local v10    # "m":Lcom/vkontakte/android/Message;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .line 421
    .local v7, "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v7, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 427
    .end local v7    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v3    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v5    # "geo":Lcom/vkontakte/android/GeoAttachment;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .line 428
    .restart local v7    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v1, v7, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v1, :cond_6

    .line 429
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v5, v7

    .line 430
    check-cast v5, Lcom/vkontakte/android/GeoAttachment;

    .line 431
    goto :goto_4

    .line 435
    .end local v7    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v4    # "fwdIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Message$FwdMessage;

    .line 436
    .local v8, "fm":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, v8, Lcom/vkontakte/android/Message$FwdMessage;->id:I

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

    .line 470
    const/4 v3, 0x0

    .line 471
    .local v3, "msg":Lcom/vkontakte/android/Message;
    sget-object v4, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 482
    :goto_0
    if-nez v3, :cond_4

    .line 490
    :goto_1
    return-void

    .line 471
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 472
    .local v2, "m":Lcom/vkontakte/android/Message;
    iget-object v5, v2, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 480
    :goto_2
    if-eqz v3, :cond_0

    goto :goto_0

    .line 472
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 473
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v6, :cond_2

    .line 474
    check-cast v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget v6, v0, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    if-ne v6, p0, :cond_2

    .line 475
    move-object v3, v2

    .line 476
    goto :goto_2

    .line 483
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    sget-object v4, Lcom/vkontakte/android/data/Messages;->pendingUploads:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    invoke-static {v3}, Lcom/vkontakte/android/data/Messages;->removeFromSending(Lcom/vkontakte/android/Message;)V

    .line 485
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 486
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "userphoto"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "id"

    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1
.end method
