.class Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    iput p2, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    iput-object p3, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1306
    :try_start_0
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-nez v4, :cond_1

    .line 1307
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1308
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600f4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    const/4 v2, 0x0

    .local v2, "imgindex":I
    const/4 v3, 0x0

    .line 1312
    .local v3, "index":I
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Attachment;

    .line 1313
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    instance-of v4, v1, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v4, :cond_2

    .line 1314
    add-int/lit8 v2, v2, 0x1

    .line 1315
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v2, v4, :cond_2

    .line 1316
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1317
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1348
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "imgindex":I
    .end local v3    # "index":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1321
    .restart local v1    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v2    # "imgindex":I
    .restart local v3    # "index":I
    :cond_2
    instance-of v4, v1, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v4, :cond_4

    .line 1322
    add-int/lit8 v2, v2, 0x1

    .line 1323
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$6(Lcom/vkontakte/android/PostViewActivity;)Lcom/vkontakte/android/NewsEntry;

    move-result-object v4

    iget v4, v4, Lcom/vkontakte/android/NewsEntry;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 1324
    :cond_3
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v2, v4, :cond_4

    .line 1325
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1326
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/VideoAttachView;

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1330
    :cond_4
    instance-of v4, v1, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v4, :cond_5

    .line 1331
    add-int/lit8 v2, v2, 0x1

    .line 1332
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v2, v4, :cond_5

    .line 1333
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1334
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v5}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Lcom/vkontakte/android/PostViewActivity;->access$8(Lcom/vkontakte/android/PostViewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1338
    :cond_5
    instance-of v4, v1, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v4, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v4, v0

    iget-object v4, v4, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v4, :cond_6

    check-cast v1, Lcom/vkontakte/android/DocumentAttachment;

    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v4, v1, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 1339
    add-int/lit8 v2, v2, 0x1

    .line 1340
    iget v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$image:I

    if-ne v2, v4, :cond_6

    .line 1341
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1342
    iget-object v4, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/PostViewActivity;->access$7(Lcom/vkontakte/android/PostViewActivity;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0600fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f06000a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsImagesAdapter$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1346
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method
