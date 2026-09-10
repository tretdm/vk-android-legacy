.class Lcom/vkontakte/android/UploaderService$16;
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

.field final synthetic val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$16;->this$0:Lcom/vkontakte/android/UploaderService;

    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 26
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 867
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "_edit"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v12, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v12, Lcom/vkontakte/android/NewsEntry;

    .line 869
    .local v12, "e":Lcom/vkontakte/android/NewsEntry;
    const/16 v18, 0x0

    .line 870
    .local v18, "photoInsertPos":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 871
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_0

    move/from16 v18, v14

    .line 870
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 873
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 874
    .local v23, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 875
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 876
    .local v21, "sizes":Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v19, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_3

    .line 878
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 879
    .local v22, "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 881
    .end local v22    # "so":Lorg/json/JSONObject;
    :cond_3
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v5, "pid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v6, "aid"

    const/4 v7, -0x7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v9, "created"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, ""

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    .line 882
    .local v1, "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 883
    add-int/lit8 v18, v18, 0x1

    .line 884
    goto/16 :goto_1

    .line 885
    .end local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .end local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v21    # "sizes":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 886
    .local v11, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v11, :cond_2

    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 969
    .end local v11    # "att":Lcom/vkontakte/android/Attachment;
    .end local v12    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "photoInsertPos":I
    .end local v23    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :catch_0
    move-exception v25

    .line 970
    .local v25, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 972
    .end local v25    # "x":Ljava/lang/Exception;
    :cond_5
    :goto_3
    return-void

    .line 889
    .restart local v12    # "e":Lcom/vkontakte/android/NewsEntry;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v18    # "photoInsertPos":I
    :cond_6
    :try_start_1
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_7

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_8

    .line 890
    :cond_7
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 891
    .local v17, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v24, v2, v3

    .line 892
    .local v24, "tSize":I
    const/16 v2, 0x25c

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 893
    move/from16 v0, v24

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 895
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .end local v24    # "tSize":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v12, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 896
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.POST_REPLACED"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    .local v16, "intent":Landroid/content/Intent;
    const-string v2, "entry"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->this$0:Lcom/vkontakte/android/UploaderService;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 901
    .end local v12    # "e":Lcom/vkontakte/android/NewsEntry;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v18    # "photoInsertPos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/vkontakte/android/UploaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 902
    .local v20, "prefs":Landroid/content/SharedPreferences;
    new-instance v12, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v12}, Lcom/vkontakte/android/NewsEntry;-><init>()V

    .line 903
    .restart local v12    # "e":Lcom/vkontakte/android/NewsEntry;
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "post_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/vkontakte/android/NewsEntry;->postID:I

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "message"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v12, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    sget v3, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v2, v3

    iput v2, v12, Lcom/vkontakte/android/NewsEntry;->time:I

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_4
    iput v2, v12, Lcom/vkontakte/android/NewsEntry;->userID:I

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v12, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "_group_title"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_5
    iput-object v2, v12, Lcom/vkontakte/android/NewsEntry;->userName:Ljava/lang/String;

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "from_group"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "_group_photo"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_6
    iput-object v2, v12, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 913
    const/16 v2, 0x42

    iput v2, v12, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 914
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_a

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_b

    .line 915
    :cond_a
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    .line 916
    .restart local v17    # "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v24, v2, v3

    .line 917
    .restart local v24    # "tSize":I
    const/16 v2, 0x25c

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 918
    move/from16 v0, v24

    int-to-float v2, v0

    const v3, 0x3f2a7efa    # 0.666f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 921
    .end local v17    # "metrics":Landroid/util/DisplayMetrics;
    .end local v24    # "tSize":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-nez v2, :cond_13

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 923
    .restart local v21    # "sizes":Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .restart local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_f

    .line 925
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 926
    .restart local v22    # "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 906
    .end local v14    # "i":I
    .end local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v21    # "sizes":Lorg/json/JSONArray;
    .end local v22    # "so":Lorg/json/JSONObject;
    :cond_c
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    goto/16 :goto_4

    .line 908
    :cond_d
    const-string v2, "username"

    const-string v3, "DELETED"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 909
    :cond_e
    const-string v2, "userphoto"

    const-string v3, "http://vkontakte.ru/images/question_b.gif"

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 928
    .restart local v14    # "i":I
    .restart local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .restart local v21    # "sizes":Lorg/json/JSONArray;
    :cond_f
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v5, "pid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v5, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v6, "aid"

    const/4 v7, -0x7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v6, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v7, v7, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v8, v8, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v9, "created"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, ""

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    .line 929
    .restart local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    .end local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .end local v14    # "i":I
    .end local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v21    # "sizes":Lorg/json/JSONArray;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 949
    new-instance v13, Lcom/vkontakte/android/GeoAttachment;

    invoke-direct {v13}, Lcom/vkontakte/android/GeoAttachment;-><init>()V

    .line 950
    .local v13, "gp":Lcom/vkontakte/android/GeoAttachment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v13, Lcom/vkontakte/android/GeoAttachment;->lat:D

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "long"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v13, Lcom/vkontakte/android/GeoAttachment;->lon:D

    .line 952
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v13    # "gp":Lcom/vkontakte/android/GeoAttachment;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "signed"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 956
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v3, Lcom/vkontakte/android/LinkAttachment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vkontakte.ru/id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "username"

    const-string v7, "DELETED"

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Lcom/vkontakte/android/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object v12, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 961
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.NEW_POST_ADDED"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v2, "entry"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->this$0:Lcom/vkontakte/android/UploaderService;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 965
    iget v2, v12, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_5

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12, v2}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 931
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 932
    .restart local v23    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    if-eqz v2, :cond_16

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 933
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v3, "sizes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 934
    .restart local v21    # "sizes":Lorg/json/JSONArray;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .restart local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_15

    .line 936
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 937
    .restart local v22    # "so":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const-string v3, "type"

    const-string v4, "?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "src"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 939
    .end local v22    # "so":Lorg/json/JSONObject;
    :cond_15
    new-instance v1, Lcom/vkontakte/android/PhotoAttachment;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    check-cast v2, [Lcom/vkontakte/android/PhotoAttachment$Image;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v5, "pid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v6, "aid"

    const/4 v7, -0x7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v7, "text"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v8, "user_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v9, "created"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, ""

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    .line 940
    .restart local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 942
    .end local v1    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .end local v14    # "i":I
    .end local v19    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    .end local v21    # "sizes":Lorg/json/JSONArray;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$16;->val$ut:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 943
    .restart local v11    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v11, :cond_14

    iget-object v2, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8
.end method
