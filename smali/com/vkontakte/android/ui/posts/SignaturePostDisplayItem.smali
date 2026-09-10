.class public Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "SignaturePostDisplayItem.java"


# instance fields
.field public att:Lcom/vkontakte/android/SignatureLinkAttachment;


# direct methods
.method public constructor <init>(IILcom/vkontakte/android/SignatureLinkAttachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_att"    # Lcom/vkontakte/android/SignatureLinkAttachment;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 18
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;->att:Lcom/vkontakte/android/SignatureLinkAttachment;

    .line 19
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x8

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 33
    move-object v3, p2

    .line 34
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 35
    .local v0, "attachView":Landroid/view/View;
    if-nez p2, :cond_1

    .line 36
    new-instance v3, Landroid/widget/FrameLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .restart local v3    # "view":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 41
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 42
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 43
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/SignaturePostDisplayItem;->att:Lcom/vkontakte/android/SignatureLinkAttachment;

    invoke-virtual {v4, p1, v0}, Lcom/vkontakte/android/SignatureLinkAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "av":Landroid/view/View;
    if-nez v0, :cond_0

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v3

    .line 46
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    :cond_0
    return-object v3

    .end local v1    # "av":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move-object v4, v3

    .line 38
    check-cast v4, Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 60
    return-void
.end method
