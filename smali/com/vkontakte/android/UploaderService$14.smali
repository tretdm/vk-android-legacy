.class Lcom/vkontakte/android/UploaderService$14;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "UploaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/UploaderService;

.field private final synthetic val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$14;->this$0:Lcom/vkontakte/android/UploaderService;

    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 640
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 643
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/UploaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 644
    .local v14, "prefs":Landroid/content/SharedPreferences;
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v8}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 645
    .local v8, "e":Lcom/vkontakte/android/NewsEntry;
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "post_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    iput v2, v8, Lcom/vkontakte/android/NewsEntry;->time_l:I

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    iput v2, v8, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "_group_title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    iput-object v2, v8, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "_group_photo"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    iput-object v2, v8, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 655
    const/16 v2, 0x42

    iput v2, v8, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-virtual {v2}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v8, Lcom/vkontakte/android/NewsEntry;->time_l:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->langDate(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/vkontakte/android/NewsEntry;->time:Ljava/lang/String;

    .line 657
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_1

    .line 658
    :cond_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 659
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v18, v2, v3

    .line 660
    .local v18, "tSize":I
    const/16 v2, 0x25c

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 661
    move/from16 v0, v18

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v18

    invoke-virtual {v8, v0, v2}, Lcom/vkontakte/android/NewsEntry;->processThumbs(II)V

    .line 664
    .end local v12    # "metrics":Landroid/util/DisplayMetrics;
    .end local v18    # "tSize":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-nez v2, :cond_a

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 666
    .local v15, "sizes":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v13, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v10, v2, :cond_9

    .line 671
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v5, "pid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v5, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v6, "aid"

    const/16 v20, -0x7

    move/from16 v0, v20

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v6, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v20, "text"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    .line 672
    .local v1, "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v2, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .end local v10    # "i":I
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v15    # "sizes":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 692
    new-instance v9, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v9}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 693
    .local v9, "gp":Lcom/vkontakte/android/GeoAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v9, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v9, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 695
    iget-object v2, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 698
    .end local v9    # "gp":Lcom/vkontakte/android/GeoAttachment;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "signed"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 699
    iget-object v2, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    new-instance v3, Lcom/vkontakte/android/LinkAttachment;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://vkontakte.ru/id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "- "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "username"

    const-string v20, "DELETED"

    move-object/from16 v0, v20

    invoke-interface {v14, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object v8, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 704
    new-instance v11, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v11, "intent":Landroid/content/Intent;
    const-string v2, "entry"

    invoke-virtual {v11, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-virtual {v2, v11}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 708
    iget v2, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v8, v2}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 715
    .end local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :goto_4
    return-void

    .line 648
    .restart local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_0

    .line 650
    :cond_7
    const-string v2, "username"

    const-string v3, "DELETED"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 651
    :cond_8
    const-string v2, "userphoto"

    const-string v3, "http://vkontakte.ru/images/question_b.gif"

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 668
    .restart local v10    # "i":I
    .restart local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v15    # "sizes":Lorg/json/JSONArray;
    :cond_9
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 669
    .local v16, "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 674
    .end local v10    # "i":I
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v15    # "sizes":Lorg/json/JSONArray;
    .end local v16    # "so":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 675
    .local v17, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    if-eqz v2, :cond_d

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 676
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 677
    .restart local v15    # "sizes":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .restart local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v10, v2, :cond_c

    .line 682
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v5, "pid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v6, "aid"

    const/16 v21, -0x7

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v21, "text"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    .line 683
    .restart local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v2, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 712
    .end local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .end local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v10    # "i":I
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "sizes":Lorg/json/JSONArray;
    .end local v17    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :catch_0
    move-exception v19

    .line 713
    .local v19, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 679
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v8    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v10    # "i":I
    .restart local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "sizes":Lorg/json/JSONArray;
    .restart local v17    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_c
    :try_start_1
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 680
    .restart local v16    # "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 685
    .end local v10    # "i":I
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v15    # "sizes":Lorg/json/JSONArray;
    .end local v16    # "so":Lorg/json/JSONObject;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$14;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/Attachment;

    .line 686
    .local v7, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v7, :cond_b

    iget-object v2, v8, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method
