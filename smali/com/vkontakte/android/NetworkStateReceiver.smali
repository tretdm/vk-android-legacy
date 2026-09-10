.class public Lcom/vkontakte/android/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field public static final ACTION_GROUPS_UPDATED:Ljava/lang/String; = "com.vkontakte.android.GROUPS_UPDATED"

.field private static final TYPE_UPDATE_PERIOD:I = 0x2710

.field private static currentNetworkType:Ljava/lang/String;

.field public static disableBigImages:Z

.field private static final highSpeedTypes:[Ljava/lang/String;

.field public static isConnected:Z

.field private static lastUpdatedType:J

.field private static final sl:[I

.field private static tries:I

.field public static userInfoUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x0

    .line 35
    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 36
    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 37
    sput v0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    .line 38
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->sl:[I

    .line 41
    sput-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->disableBigImages:Z

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/NetworkStateReceiver;->lastUpdatedType:J

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "3g"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "lte"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ethernet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->highSpeedTypes:[Ljava/lang/String;

    return-void

    .line 38
    nop

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
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateFriendlist(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->sl:[I

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 33
    sput p0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    return p0
.end method

.method static synthetic access$310()I
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/vkontakte/android/NetworkStateReceiver;->tries:I

    return v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 409
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 410
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    const-string v2, "none"

    .line 418
    :goto_0
    return-object v2

    .line 411
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    .line 412
    const-string v2, "GPRS"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "EDGE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "edge"

    goto :goto_0

    .line 413
    :cond_2
    const-string v2, "LTE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "lte"

    goto :goto_0

    .line 414
    :cond_3
    const-string v2, "3g"

    goto :goto_0

    .line 416
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string v2, "wifi"

    goto :goto_0

    .line 417
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    const-string v2, "ethernet"

    goto :goto_0

    .line 418
    :cond_6
    const-string v2, "other"

    goto :goto_0
.end method

.method public static getNotifications(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_get_notify"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 273
    .local v0, "last":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    sget-object v1, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 276
    :try_start_0
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "internal.getNotifications"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "os"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "app_version"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "locale"

    const-string v3, "user.language"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NetworkStateReceiver$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NetworkStateReceiver$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isConnected()Z
    .locals 4

    .prologue
    .line 385
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 386
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 387
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHighSpeed()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 391
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "bigImagesMobile"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isMobile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    .local v0, "arr$":[Ljava/lang/String;
    .local v1, "i$":I
    .local v2, "len$":I
    :cond_0
    :goto_0
    return v4

    .line 392
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    sget-object v6, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/vkontakte/android/NetworkStateReceiver;->lastUpdatedType:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 393
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 394
    :cond_3
    sget-object v0, Lcom/vkontakte/android/NetworkStateReceiver;->highSpeedTypes:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 395
    .local v3, "s":Ljava/lang/String;
    sget-object v6, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    goto :goto_0

    .line 394
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isMobile()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 401
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 402
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 403
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static updateFriendlist(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 377
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    .line 379
    invoke-static {v1}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    .line 380
    invoke-static {}, Lcom/vkontakte/android/data/Stickers;->updateInfo()V

    .line 382
    :cond_0
    return-void
.end method

.method public static updateInfo(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 168
    sget-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    if-nez v2, :cond_0

    .line 169
    const-string v2, "vk"

    const-string v3, "about to update user info..."

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "uid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    const-string v2, "vk"

    const-string v3, "not logged in."

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    sget-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v2, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->res:Landroid/content/res/Resources;

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 178
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/vkontakte/android/Global;->displayDensity:F

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 181
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "sid"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "uid"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/vkontakte/android/Global;->uid:I

    .line 183
    const-string v2, "sid"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 184
    const-string v2, "secret"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 185
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v2

    const-string v3, "vk_uid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/Global;->inited:Z

    .line 189
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "new_auth"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 190
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/NetworkStateReceiver$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NetworkStateReceiver$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 197
    :cond_4
    invoke-static {p0}, Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static updateUserInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-lez v0, :cond_0

    .line 204
    new-instance v0, Lcom/vkontakte/android/api/C2DMRegisterDevice;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    .line 205
    new-instance v0, Lcom/vkontakte/android/api/GetWallInfo;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/NetworkStateReceiver$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NetworkStateReceiver$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GetWallInfo;->setCallback(Lcom/vkontakte/android/api/GetWallInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 61
    .local v15, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/BirthdayBroadcastReceiver;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v10, "bdIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v2, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 63
    .local v7, "pbIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 64
    .local v1, "as":Landroid/app/AlarmManager;
    const-string v2, "notifyBDays"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v17, 0x5265c00

    rem-long v5, v5, v17

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

    .line 69
    :goto_1
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v8, 0x1

    .line 71
    .local v8, "_isConnected":Z
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    .line 72
    sget-boolean v2, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!!!!!! NETWORK CHANGED to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkontakte/android/NetworkStateReceiver;->currentNetworkType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2
    sget-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    if-eq v2, v8, :cond_0

    .line 74
    sput-boolean v8, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    .line 75
    sget-boolean v2, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected:Z

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.STICKERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    sget-object v2, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 80
    new-instance v12, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v12, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v12, "lintent":Landroid/content/Intent;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    .end local v12    # "lintent":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "need_update_gcm"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    new-instance v2, Lcom/vkontakte/android/api/C2DMRegisterDevice;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "need_update_gcm"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkontakte/android/api/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vkontakte/android/NetworkStateReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/NetworkStateReceiver$1;-><init>(Lcom/vkontakte/android/NetworkStateReceiver;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->setCallback(Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 98
    :cond_4
    const-string v2, "vk"

    const-string v3, "Before update info"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/NetworkStateReceiver;->updateInfo(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getResendableMessages()Ljava/util/ArrayList;

    move-result-object v16

    .line 102
    .local v16, "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before resend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/Message;

    .line 106
    .local v13, "m":Lcom/vkontakte/android/Message;
    iget v2, v13, Lcom/vkontakte/android/Message;->peer:I

    iget-object v3, v13, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget-object v4, v13, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v5, v13, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    iget v6, v13, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v14

    .line 107
    .local v14, "msg":Lcom/vkontakte/android/Message;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v14, v2, v3}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 109
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v9, "b":Landroid/content/Intent;
    const-string v2, "msg_id"

    iget v3, v13, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 112
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "b":Landroid/content/Intent;
    const-string v2, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v9    # "b":Landroid/content/Intent;
    const-string v2, "peer_id"

    iget v3, v14, Lcom/vkontakte/android/Message;->peer:I

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v2, "message"

    invoke-virtual {v9, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_3

    .line 67
    .end local v8    # "_isConnected":Z
    .end local v9    # "b":Landroid/content/Intent;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/vkontakte/android/Message;
    .end local v14    # "msg":Lcom/vkontakte/android/Message;
    .end local v16    # "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 70
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 119
    .restart local v8    # "_isConnected":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "resend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/NetworkStateReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/vkontakte/android/NetworkStateReceiver$2;-><init>(Lcom/vkontakte/android/NetworkStateReceiver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method
