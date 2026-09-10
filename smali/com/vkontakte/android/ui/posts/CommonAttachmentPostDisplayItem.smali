.class public Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "CommonAttachmentPostDisplayItem.java"


# instance fields
.field public att:Lcom/vkontakte/android/Attachment;


# direct methods
.method public constructor <init>(IILcom/vkontakte/android/Attachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_att"    # Lcom/vkontakte/android/Attachment;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 19
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    .line 20
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    instance-of v0, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    instance-of v0, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x7

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 34
    move-object v3, p2

    .line 35
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 36
    .local v0, "attachView":Landroid/view/View;
    if-nez p2, :cond_1

    .line 37
    new-instance v3, Landroid/widget/FrameLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .restart local v3    # "view":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 45
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 46
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 47
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    invoke-virtual {v4, p1, v0}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "av":Landroid/view/View;
    if-nez v0, :cond_0

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v3

    .line 50
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    return-object v3

    .end local v1    # "av":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move-object v4, v3

    .line 39
    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    instance-of v0, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v0, :cond_0

    .line 64
    if-nez p3, :cond_1

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v0, p2}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/CommonAttachmentPostDisplayItem;->att:Lcom/vkontakte/android/Attachment;

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v0, p2, p3, p4}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
