.class public Lcom/vkontakte/android/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field public static final ACTION_GROUPS_UPDATED:Ljava/lang/String; = "com.vkontakte.android.GROUPS_UPDATED"

.field public static disableBigImages:Z

.field public static isConnected:Z

.field private static final sl:[I

.field private static tries:I

.field public static userInfoUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 42
    sput-boolean v1, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 43
    sput-boolean v1, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 44
    sput v0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->sl:[I

    .line 47
    sput-boolean v1, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 40
    return-void

    .line 45
    :array_0
    .array-data 4
        0x5dc
        0xbb8
        0x1770
        0x2ee0
        0x5dc0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 231
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateDialogs(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 199
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3()[I
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->sl:[I

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    return v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    return-void
.end method

.method static synthetic access$6(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 261
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateFriendlist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 324
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateGroups(Landroid/content/Context;)V

    return-void
.end method

.method private static getNotifications(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    :try_start_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "internal.getNotifications"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 203
    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 204
    const-string v1, "app_version"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 205
    const-string v1, "locale"

    const-string v2, "user.language"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isConnected()Z
    .locals 4

    .prologue
    .line 341
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 342
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 343
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static updateDialogs(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetDialogs;

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetDialogs;-><init>(II)V

    .line 233
    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 259
    return-void
.end method

.method private static updateFriendlist(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    new-instance v0, Lcom/vkontakte/android/api/FriendsGet;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    .line 263
    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 320
    const-string v1, "order"

    const-string v2, "hints"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 322
    return-void
.end method

.method private static updateGroups(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    new-instance v0, Lcom/vkontakte/android/api/GroupsGet;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;-><init>(I)V

    .line 326
    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 338
    return-void
.end method

.method public static updateInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    sget-boolean v0, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "vk"

    const-string v1, "about to update user info..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_auth"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static updateUserInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-lez v0, :cond_0

    .line 112
    new-instance v0, Lcom/vkontakte/android/api/GetWallInfo;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    .line 113
    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 55
    .local v15, "xtras":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 56
    .local v11, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 59
    .local v12, "prefs":Landroid/content/SharedPreferences;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v9, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 61
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 62
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v16, 0x5265c00

    rem-long v5, v5, v16

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 67
    :goto_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v8, 0x0

    .line 69
    .local v8, "_isConnected":Z
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 70
    if-eqz v8, :cond_1

    .line 71
    const-string v2, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    .line 72
    .local v10, "info":Landroid/net/NetworkInfo;
    if-eqz v10, :cond_1

    .line 73
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v14

    .line 76
    .local v14, "type":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "bigImagesMobile"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EDGE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPRS"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 78
    const-string v2, "vk"

    const-string v3, "Big images disabled!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v14    # "type":Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    if-ne v2, v8, :cond_6

    .line 91
    .end local v8    # "_isConnected":Z
    :cond_2
    :goto_3
    return-void

    .line 56
    .end local v1    # "as":Landroid/app/AlarmManager;
    .end local v7    # "pbIntent":Landroid/app/PendingIntent;
    .end local v9    # "bdIntent":Landroid/content/Intent;
    .end local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "s":Ljava/lang/String;
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 65
    .end local v13    # "s":Ljava/lang/String;
    .restart local v1    # "as":Landroid/app/AlarmManager;
    .restart local v7    # "pbIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bdIntent":Landroid/content/Intent;
    .restart local v12    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 68
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 83
    .restart local v8    # "_isConnected":Z
    :cond_6
    sput-boolean v8, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 84
    sget-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v2, :cond_2

    .line 87
    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    goto :goto_3
.end method
