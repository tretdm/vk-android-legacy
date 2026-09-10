.class Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardTopicViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BoardTopicViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicViewActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/BoardTopicViewActivity;Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;-><init>(Lcom/vkontakte/android/BoardTopicViewActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 371
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 376
    move-object v7, p2

    .line 377
    .local v7, "view":Landroid/view/View;
    if-nez v7, :cond_0

    .line 378
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    const v9, 0x7f03000c

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 379
    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 380
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$1(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v8, Lcom/vkontakte/android/ui/HighlightDrawable;

    invoke-direct {v8}, Lcom/vkontakte/android/ui/HighlightDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/ui/HighlightDrawable;

    if-nez p1, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/HighlightDrawable;->setFirst(Z)V

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 386
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$0(Lcom/vkontakte/android/BoardTopicViewActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/BoardComment;

    .line 387
    .local v1, "c":Lcom/vkontakte/android/api/BoardComment;
    const v8, 0x7f060038

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const v8, 0x7f060039

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const v8, 0x7f06003b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, v1, Lcom/vkontakte/android/api/BoardComment;->time:I

    iget-object v10, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v10}, Lcom/vkontakte/android/BoardTopicViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Global;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const v8, 0x7f060039

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v8, v1, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    iget-object v9, v1, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 394
    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v9}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v9

    iget-object v10, v1, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    :goto_2
    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v9, v1, Lcom/vkontakte/android/api/BoardComment;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 402
    iget-object v8, v1, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, "pi":I
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, "nPhotos":I
    iget-object v8, v1, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 408
    iget-object v8, v1, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 438
    .end local v3    # "nPhotos":I
    .end local v4    # "pi":I
    :goto_5
    const/4 v2, 0x0

    .line 440
    .local v2, "idx":I
    iget-object v8, v1, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_9

    .line 456
    return-object v7

    .line 384
    .end local v1    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v2    # "idx":I
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 391
    .restart local v1    # "c":Lcom/vkontakte/android/api/BoardComment;
    :cond_4
    const/16 v8, 0x8

    goto/16 :goto_1

    .line 396
    :cond_5
    const v8, 0x7f060037

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0201e8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 407
    .restart local v3    # "nPhotos":I
    .restart local v4    # "pi":I
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 408
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 409
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_2

    .line 410
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    .line 431
    .local v6, "v":Landroid/view/View;
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 435
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v3    # "nPhotos":I
    .end local v4    # "pi":I
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 440
    .restart local v2    # "idx":I
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 441
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v8, v0, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v8, :cond_a

    move-object v8, v0

    .line 442
    check-cast v8, Lcom/vkontakte/android/PhotoAttachment;

    invoke-virtual {v8}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 444
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v10}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    .end local v5    # "src":Ljava/lang/String;
    :cond_a
    :goto_7
    instance-of v8, v0, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v8, :cond_b

    .line 449
    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    iget-object v5, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    .line 450
    .restart local v5    # "src":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v8}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 451
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/VideoAttachView;

    iget-object v10, p0, Lcom/vkontakte/android/BoardTopicViewActivity$CommentsAdapter;->this$0:Lcom/vkontakte/android/BoardTopicViewActivity;

    invoke-static {v10}, Lcom/vkontakte/android/BoardTopicViewActivity;->access$2(Lcom/vkontakte/android/BoardTopicViewActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/vkontakte/android/VideoAttachView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 453
    .end local v5    # "src":Ljava/lang/String;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 446
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v5    # "src":Ljava/lang/String;
    :cond_c
    const v8, 0x7f06003a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method
