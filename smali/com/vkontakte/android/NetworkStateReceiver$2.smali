.class Lcom/vkontakte/android/NetworkStateReceiver$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$2;->val$context:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 188
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$3()[I

    move-result-object v0

    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$4()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$4()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$5(I)V

    .line 191
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->access$4()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NetworkStateReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$0(Landroid/content/Context;)V

    .line 193
    :goto_1
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/vkontakte/android/NetworkStateReceiver;->access$5(I)V

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public success([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V
    .locals 19
    .param p1, "name"    # [Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "subtext1"    # Ljava/lang/String;
    .param p4, "subtext2"    # Ljava/lang/String;
    .param p5, "online"    # Z
    .param p6, "canWrite"    # Z
    .param p7, "isAdmin"    # Z
    .param p8, "photos"    # [Lcom/vkontakte/android/Photo;
    .param p9, "counters"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ[",
            "Lcom/vkontakte/android/Photo;",
            "[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p10, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x1

    sput-boolean v14, Lcom/vkontakte/android/NetworkStateReceiver;->userInfoUpdated:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NetworkStateReceiver$2;->val$context:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 119
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v11, ""

    .line 120
    .local v11, "sphotos":Ljava/lang/String;
    move-object/from16 v0, p8

    array-length v15, v0

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_5

    .line 123
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 124
    :cond_0
    const-string v3, ""

    .line 125
    .local v3, "ctrs":Ljava/lang/String;
    move-object/from16 v0, p9

    array-length v15, v0

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v15, :cond_6

    .line 126
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v13, ""

    .line 128
    .local v13, "uinfo":Ljava/lang/String;
    invoke-virtual/range {p10 .. p10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 129
    .local v5, "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 133
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 135
    :cond_2
    const/4 v10, 0x0

    .line 136
    .local v10, "serverTime":I
    const-string v14, "_time"

    move-object/from16 v0, p10

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 137
    const-string v14, "_time"

    move-object/from16 v0, p10

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 139
    :cond_3
    const/4 v12, 0x0

    .line 160
    .local v12, "timeDiff":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 161
    .local v7, "localTime":I
    sub-int v14, v7, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x4b0

    if-le v14, v15, :cond_4

    .line 162
    sub-int v14, v7, v10

    int-to-float v14, v14

    const/high16 v15, 0x45610000    # 3600.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 163
    .local v4, "hOffset":I
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "t diff = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hrs ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-int v16, v7, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    mul-int/lit16 v12, v4, 0xe10

    sput v12, Lcom/vkontakte/android/Global;->timeDiff:I

    .line 165
    const-string v14, "vk"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "using time offset "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v4    # "hOffset":I
    :cond_4
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 169
    const-string v15, "username"

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 170
    const-string v15, "username1"

    const/16 v16, 0x1

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 171
    const-string v15, "username2"

    const/16 v16, 0x2

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 172
    const-string v15, "userphoto"

    move-object/from16 v0, p2

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 173
    const-string v15, "userphotos"

    invoke-interface {v14, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 174
    const-string v15, "usercounters"

    invoke-interface {v14, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 175
    const-string v15, "userinfo"

    invoke-interface {v14, v15, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 176
    const-string v15, "useruniversity"

    move-object/from16 v0, p3

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 177
    const-string v15, "usercity"

    move-object/from16 v0, p4

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 178
    const-string v15, "time_diff"

    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 179
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NetworkStateReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v14}, Lcom/vkontakte/android/NetworkStateReceiver;->access$1(Landroid/content/Context;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/NetworkStateReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v14}, Lcom/vkontakte/android/NetworkStateReceiver;->access$2(Landroid/content/Context;)V

    .line 184
    return-void

    .line 120
    .end local v3    # "ctrs":Ljava/lang/String;
    .end local v5    # "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "localTime":I
    .end local v10    # "serverTime":I
    .end local v12    # "timeDiff":I
    .end local v13    # "uinfo":Ljava/lang/String;
    :cond_5
    aget-object v8, p8, v14

    .line 121
    .local v8, "p":Lcom/vkontakte/android/Photo;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/vkontakte/android/Photo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 125
    .end local v8    # "p":Lcom/vkontakte/android/Photo;
    .restart local v3    # "ctrs":Ljava/lang/String;
    :cond_6
    aget v2, p9, v14

    .local v2, "c":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 129
    .end local v2    # "c":I
    .restart local v5    # "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "uinfo":Ljava/lang/String;
    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    .local v6, "k":Ljava/lang/String;
    const-string v14, "_"

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "<>"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "|"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p10

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v17, "<>"

    const-string v18, "< >"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2
.end method
