.class Lcom/vkontakte/android/Auth$2;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetWallInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/Auth$2;->val$result:[Z

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/Auth$2;->val$result:[Z

    aput-boolean v2, v0, v2

    .line 246
    return-void
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
    .param p8, "lastPhotos"    # [Lcom/vkontakte/android/Photo;
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
    .line 203
    .local p10, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 205
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v11, ""

    .line 206
    .local v11, "sphotos":Ljava/lang/String;
    move-object/from16 v0, p8

    array-length v15, v0

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_2

    .line 209
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 210
    :cond_0
    const-string v6, ""

    .line 211
    .local v6, "ctrs":Ljava/lang/String;
    move-object/from16 v0, p9

    array-length v15, v0

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v15, :cond_3

    .line 212
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    const-string v12, ""

    .line 214
    .local v12, "uinfo":Ljava/lang/String;
    invoke-virtual/range {p10 .. p10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 215
    .local v7, "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4

    .line 218
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 220
    :cond_1
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 221
    const-string v15, "username"

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 222
    const-string v15, "username1"

    const/16 v16, 0x1

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 223
    const-string v15, "username2"

    const/16 v16, 0x2

    aget-object v16, p1, v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 224
    const-string v15, "userphoto"

    move-object/from16 v0, p2

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 225
    const-string v15, "userphotos"

    invoke-interface {v14, v15, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 226
    const-string v15, "usercounters"

    invoke-interface {v14, v15, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 227
    const-string v15, "userinfo"

    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 228
    const-string v15, "useruniversity"

    move-object/from16 v0, p3

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 229
    const-string v15, "usercity"

    move-object/from16 v0, p4

    invoke-interface {v14, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 230
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    :try_start_0
    new-instance v2, Landroid/accounts/Account;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    const-string v15, "com.vkontakte.account"

    invoke-direct {v2, v14, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v2, "account":Landroid/accounts/Account;
    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 234
    .local v4, "am":Landroid/accounts/AccountManager;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v2, v14, v15}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    .line 235
    .local v3, "accountCreated":Z
    const-class v14, Landroid/content/ContentResolver;

    const-string v15, "setIsSyncable"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-class v18, Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 236
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v2, v16, v17

    const/16 v17, 0x1

    const-string v18, "com.android.contacts"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v14, "com.android.contacts"

    const/4 v15, 0x1

    invoke-static {v2, v14, v15}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountCreated":Z
    .end local v4    # "am":Landroid/accounts/AccountManager;
    :goto_3
    return-void

    .line 206
    .end local v6    # "ctrs":Ljava/lang/String;
    .end local v7    # "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "uinfo":Ljava/lang/String;
    :cond_2
    aget-object v9, p8, v14

    .line 207
    .local v9, "p":Lcom/vkontakte/android/Photo;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Lcom/vkontakte/android/Photo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/vkontakte/android/Photo;->thumbURL:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 206
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 211
    .end local v9    # "p":Lcom/vkontakte/android/Photo;
    .restart local v6    # "ctrs":Ljava/lang/String;
    :cond_3
    aget v5, p9, v14

    .local v5, "c":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 215
    .end local v5    # "c":I
    .restart local v7    # "ik":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "uinfo":Ljava/lang/String;
    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 216
    .local v8, "k":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "<>"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "|"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v12

    goto/16 :goto_2

    .line 239
    .end local v8    # "k":Ljava/lang/String;
    :catch_0
    move-exception v13

    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
