.class Lcom/vkontakte/android/PhotoViewerActivity$21;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "PhotoViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->loadPhotoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 644
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$17(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 683
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 646
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/vkontakte/android/PhotoViewerActivity;->access$17(Lcom/vkontakte/android/PhotoViewerActivity;Lcom/vkontakte/android/APIRequest;)V

    .line 648
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 649
    .local v3, "resp":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v10

    const/4 v10, 0x0

    iput v10, v7, Lcom/vkontakte/android/Photo;->nTags:I

    .line 650
    const-string v7, "t"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 651
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 652
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v10

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    iput v10, v7, Lcom/vkontakte/android/Photo;->nTags:I

    .line 653
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v6, v7, [Lcom/vkontakte/android/PhotoTag;

    .line 654
    .local v6, "tags":[Lcom/vkontakte/android/PhotoTag;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 666
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const v10, 0x7f0600c0

    invoke-virtual {v7, v10}, Lcom/vkontakte/android/PhotoViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ZoomableImageView;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v11, v11, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v11, v6}, Lcom/vkontakte/android/PhotoViewerActivity;->access$18(Lcom/vkontakte/android/PhotoViewerActivity;[Lcom/vkontakte/android/PhotoTag;)V

    iput-object v6, v10, Lcom/vkontakte/android/Photo;->tags:[Lcom/vkontakte/android/PhotoTag;

    invoke-virtual {v7, v6}, Lcom/vkontakte/android/ZoomableImageView;->setTags([Lcom/vkontakte/android/PhotoTag;)V

    .line 668
    .end local v1    # "i":I
    .end local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v10

    const-string v10, "c"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lcom/vkontakte/android/Photo;->nComments:I

    .line 669
    const-string v7, "l"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 670
    .local v2, "lk":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 671
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v10

    const-string v10, "count"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Lcom/vkontakte/android/Photo;->nLikes:I

    .line 672
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v10, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v10, v10, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v10, v7, v10

    const-string v7, "user_likes"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, v10, Lcom/vkontakte/android/Photo;->isLiked:Z

    .line 674
    :cond_1
    const-string v7, "d"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    const-string v8, "d"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 675
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    const-string v8, ""

    iput-object v8, v7, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    .line 676
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    const-string v8, "date"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/vkontakte/android/Photo;->date:I

    .line 677
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v7, v7, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/vkontakte/android/Photo;->infoLoaded:Z

    .line 678
    iget-object v7, p0, Lcom/vkontakte/android/PhotoViewerActivity$21;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v7}, Lcom/vkontakte/android/PhotoViewerActivity;->access$3(Lcom/vkontakte/android/PhotoViewerActivity;)V

    .line 680
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "lk":Lorg/json/JSONObject;
    .end local v3    # "resp":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 655
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "resp":Lorg/json/JSONObject;
    .restart local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 656
    .local v5, "tag":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/PhotoTag;

    invoke-direct {v4}, Lcom/vkontakte/android/PhotoTag;-><init>()V

    .line 657
    .local v4, "t":Lcom/vkontakte/android/PhotoTag;
    const-string v7, "tag_id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->id:I

    .line 658
    const-string v7, "uid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->userID:I

    .line 659
    const-string v7, "tagged_name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    .line 660
    const-string v7, "x"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->x1:F

    .line 661
    const-string v7, "y"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->y1:F

    .line 662
    const-string v7, "x2"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->x2:F

    .line 663
    const-string v7, "y2"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v4, Lcom/vkontakte/android/PhotoTag;->y2:F

    .line 664
    aput-object v4, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v4    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v5    # "tag":Lorg/json/JSONObject;
    .end local v6    # "tags":[Lcom/vkontakte/android/PhotoTag;
    .restart local v2    # "lk":Lorg/json/JSONObject;
    :cond_5
    move v7, v9

    .line 672
    goto/16 :goto_1

    .line 679
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "lk":Lorg/json/JSONObject;
    .end local v3    # "resp":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
