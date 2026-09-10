.class Lcom/vkontakte/android/NetworkStateReceiver$4;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetWallInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->updateUserInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAIL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$2()[I

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$3()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$3()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$4(I)V

    .line 264
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$3()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$0(Landroid/content/Context;)V

    .line 266
    :goto_1
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$4(I)V

    goto :goto_1

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;ZZIIIZ)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "exportTwi"    # Z
    .param p4, "exportFb"    # Z
    .param p5, "time"    # I
    .param p6, "intro"    # I
    .param p7, "country"    # I
    .param p8, "hasNewItems"    # Z

    .prologue
    .line 210
    const/4 v6, 0x1

    sput-boolean v6, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 211
    iget-object v6, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 212
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 233
    .local v5, "timeDiff":I
    move v4, p5

    .line 234
    .local v4, "serverTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 236
    .local v2, "localTime":I
    sub-int v6, v2, v4

    int-to-float v6, v6

    const/high16 v7, 0x45610000    # 3600.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 237
    .local v1, "hOffset":I
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "t diff = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hrs ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sub-int v6, v2, v4

    sput v6, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 240
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "using time offset "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "User country is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 244
    const-string v7, "usercountry"

    move/from16 v0, p7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 245
    const-string v7, "username"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 246
    const-string v7, "userphoto"

    invoke-interface {v6, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 247
    const-string v7, "time_diff"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 248
    const-string v7, "export_twitter_avail"

    invoke-interface {v6, v7, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 249
    const-string v7, "export_facebook_avail"

    invoke-interface {v6, v7, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 250
    const-string v7, "intro"

    move/from16 v0, p6

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 251
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v6, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    const-string v7, "stickers"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "has_new"

    move/from16 v0, p8

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    iget-object v6, p0, Lcom/vkontakte/android/NetworkStateReceiver$4;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/vkontakte/android/NetworkStateReceiver;->access$1(Landroid/content/Context;)V

    .line 257
    return-void
.end method
