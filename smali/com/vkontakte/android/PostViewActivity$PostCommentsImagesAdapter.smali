.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "PostViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PostViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostCommentsImagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/PostViewActivity;Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)V
    .locals 0

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;-><init>(Lcom/vkontakte/android/PostViewActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 5
    .param p1, "item"    # I

    .prologue
    .line 1223
    const/4 v1, 0x1

    .line 1224
    .local v1, "count":I
    if-nez p1, :cond_3

    .line 1225
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 1233
    .end local v1    # "count":I
    .local v2, "count":I
    :goto_1
    return v2

    .line 1225
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1226
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/vkontakte/android/GeoAttachment;

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1229
    iget-object v3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v3}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsComment;

    iget-object v3, v3, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    move v2, v1

    .line 1231
    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    .line 1229
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1230
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-nez v3, :cond_6

    instance-of v3, v0, Lcom/vkontakte/android/VideoAttachment;

    if-nez v3, :cond_6

    instance-of v3, v0, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v3, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 1238
    if-nez p1, :cond_7

    .line 1239
    packed-switch p2, :pswitch_data_0

    .line 1243
    const/4 v8, 0x0

    .line 1244
    .local v8, "imgindex":I
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1298
    :cond_1
    const-string v0, ""

    .end local v8    # "imgindex":I
    :goto_0
    return-object v0

    .line 1241
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    goto :goto_0

    .line 1244
    .restart local v8    # "imgindex":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 1245
    .local v6, "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v0, :cond_3

    .line 1246
    add-int/lit8 v8, v8, 0x1

    .line 1247
    if-ne v8, p2, :cond_3

    .line 1248
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1251
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_3
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v0, :cond_5

    .line 1252
    add-int/lit8 v8, v8, 0x1

    .line 1253
    if-ne v8, p2, :cond_5

    .line 1255
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v0

    iget v0, v0, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->bigImage:Ljava/lang/String;

    goto :goto_0

    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_4
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto :goto_0

    .line 1258
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_5
    instance-of v0, v6, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v0, :cond_6

    .line 1259
    add-int/lit8 v8, v8, 0x1

    .line 1260
    if-ne v8, p2, :cond_6

    move-object v7, v6

    .line 1261
    check-cast v7, Lcom/vkontakte/android/GeoAttachment;

    .line 1262
    .local v7, "gp":Lcom/vkontakte/android/GeoAttachment;
    iget-wide v0, v7, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-wide v2, v7, Lcom/vkontakte/android/GeoAttachment;->lon:D

    const/16 v4, 0x12c

    const/16 v5, 0xb4

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/Global;->getStaticMapURL(DDII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1265
    .end local v7    # "gp":Lcom/vkontakte/android/GeoAttachment;
    :cond_6
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1266
    add-int/lit8 v8, v8, 0x1

    .line 1267
    if-ne v8, p2, :cond_0

    .line 1268
    check-cast v6, Lcom/vkontakte/android/DocumentAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    goto :goto_0

    .line 1273
    .end local v8    # "imgindex":I
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 1274
    if-nez p2, :cond_8

    .line 1275
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-object v0, v0, Lcom/vkontakte/android/NewsComment;->userPhoto:Ljava/lang/String;

    goto/16 :goto_0

    .line 1276
    :cond_8
    const/4 v8, 0x0

    .line 1277
    .restart local v8    # "imgindex":I
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsComment;

    iget-object v0, v0, Lcom/vkontakte/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Attachment;

    .line 1278
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v0, v6, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v0, :cond_a

    .line 1279
    add-int/lit8 v8, v8, 0x1

    .line 1280
    if-ne v8, p2, :cond_a

    .line 1281
    check-cast v6, Lcom/vkontakte/android/PhotoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1284
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_a
    instance-of v0, v6, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v0, :cond_b

    .line 1285
    add-int/lit8 v8, v8, 0x1

    .line 1286
    if-ne v8, p2, :cond_b

    .line 1287
    check-cast v6, Lcom/vkontakte/android/VideoAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    goto/16 :goto_0

    .line 1290
    .restart local v6    # "att":Lcom/vkontakte/android/Attachment;
    :cond_b
    instance-of v0, v6, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, v6

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    iget-object v0, v0, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1291
    add-int/lit8 v8, v8, 0x1

    .line 1292
    if-ne v8, p2, :cond_9

    .line 1293
    check-cast v6, Lcom/vkontakte/android/DocumentAttachment;

    .end local v6    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v0, v6, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    goto/16 :goto_0

    .line 1239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1303
    if-nez p1, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$9(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$2;-><init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
