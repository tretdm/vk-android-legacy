.class public Lcom/vkontakte/android/data/database/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field public code:Ljava/lang/String;

.field public id:I

.field public important:Z

.field public name:Ljava/lang/String;

.field public phoneCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .param p0, "unique"    # Z
    .param p1, "includeNone"    # Z
    .param p2, "noneTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/data/database/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/Country;>;"
    :try_start_0
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v21, "usercountry"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 22
    .local v16, "userCountry":I
    const/16 v17, 0x0

    .line 23
    .local v17, "userCountryCode":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 24
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 25
    .local v15, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 26
    .local v14, "simCountry":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 27
    move-object/from16 v17, v14

    .line 32
    .end local v14    # "simCountry":Ljava/lang/String;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    const/16 v18, 0x1

    .line 33
    .local v18, "userCountryPos":I
    :goto_1
    if-eqz p1, :cond_1

    .line 34
    new-instance v12, Lcom/vkontakte/android/data/database/Country;

    invoke-direct {v12}, Lcom/vkontakte/android/data/database/Country;-><init>()V

    .line 35
    .local v12, "none":Lcom/vkontakte/android/data/database/Country;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v12, Lcom/vkontakte/android/data/database/Country;->id:I

    .line 36
    if-eqz p2, :cond_7

    .end local p2    # "noneTitle":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/vkontakte/android/data/database/Country;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v12    # "none":Lcom/vkontakte/android/data/database/Country;
    :cond_1
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "countries_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/vkontakte/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".txt"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 40
    .local v7, "in":Ljava/io/InputStream;
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v20

    move/from16 v0, v20

    new-array v5, v0, [B

    .line 41
    .local v5, "file":[B
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I

    .line 42
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 43
    new-instance v20, Ljava/lang/String;

    const-string v21, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "lines":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v4, "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v9, :cond_9

    aget-object v10, v2, v6

    .line 46
    .local v10, "line":Ljava/lang/String;
    const-string v20, ","

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "info":[Ljava/lang/String;
    new-instance v3, Lcom/vkontakte/android/data/database/Country;

    invoke-direct {v3}, Lcom/vkontakte/android/data/database/Country;-><init>()V

    .line 48
    .local v3, "c":Lcom/vkontakte/android/data/database/Country;
    const/16 v20, 0x1

    aget-object v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v3, Lcom/vkontakte/android/data/database/Country;->id:I

    .line 49
    const/16 v20, 0x2

    aget-object v20, v8, v20

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkontakte/android/data/database/Country;->code:Ljava/lang/String;

    .line 50
    const/16 v20, 0x3

    aget-object v20, v8, v20

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkontakte/android/data/database/Country;->name:Ljava/lang/String;

    .line 51
    const/16 v20, 0x0

    aget-object v20, v8, v20

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkontakte/android/data/database/Country;->phoneCode:Ljava/lang/String;

    .line 52
    if-eqz p0, :cond_2

    iget-object v0, v3, Lcom/vkontakte/android/data/database/Country;->code:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 53
    :cond_2
    iget v0, v3, Lcom/vkontakte/android/data/database/Country;->id:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    if-eqz v17, :cond_8

    iget-object v0, v3, Lcom/vkontakte/android/data/database/Country;->code:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 54
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v3, Lcom/vkontakte/android/data/database/Country;->important:Z

    .line 55
    move/from16 v0, v18

    invoke-virtual {v13, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "c":Lcom/vkontakte/android/data/database/Country;
    .end local v4    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "file":[B
    .end local v6    # "i$":I
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "info":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v18    # "userCountryPos":I
    .restart local v14    # "simCountry":Ljava/lang/String;
    .restart local v15    # "tm":Landroid/telephony/TelephonyManager;
    .restart local p2    # "noneTitle":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 32
    .end local v14    # "simCountry":Ljava/lang/String;
    .end local v15    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 36
    .restart local v12    # "none":Lcom/vkontakte/android/data/database/Country;
    .restart local v18    # "userCountryPos":I
    :cond_7
    sget-object v20, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d01b6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 57
    .end local v12    # "none":Lcom/vkontakte/android/data/database/Country;
    .end local p2    # "noneTitle":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "c":Lcom/vkontakte/android/data/database/Country;
    .restart local v4    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "file":[B
    .restart local v6    # "i$":I
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "info":[Ljava/lang/String;
    .restart local v9    # "len$":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "lines":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 60
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "c":Lcom/vkontakte/android/data/database/Country;
    .end local v4    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "file":[B
    .end local v6    # "i$":I
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "info":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lines":[Ljava/lang/String;
    .end local v16    # "userCountry":I
    .end local v17    # "userCountryCode":Ljava/lang/String;
    .end local v18    # "userCountryPos":I
    :catch_0
    move-exception v19

    .local v19, "x":Ljava/lang/Exception;
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v19    # "x":Ljava/lang/Exception;
    :cond_9
    return-object v13
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/data/database/Country;->name:Ljava/lang/String;

    return-object v0
.end method
