.class public Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "AudioPostDisplayItem.java"


# instance fields
.field public att:Lcom/vkontakte/android/AudioAttachment;


# direct methods
.method public constructor <init>(IILcom/vkontakte/android/AudioAttachment;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_att"    # Lcom/vkontakte/android/AudioAttachment;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 20
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkontakte/android/AudioAttachment;

    .line 21
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x6

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    .line 35
    move-object v3, p2

    .line 36
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 37
    .local v0, "attachView":Landroid/view/View;
    if-nez p2, :cond_1

    .line 38
    new-instance v3, Landroid/widget/FrameLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    .restart local v3    # "view":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 46
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 47
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 48
    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkontakte/android/AudioAttachment;

    invoke-virtual {v4, p1, v0}, Lcom/vkontakte/android/AudioAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .local v1, "av":Landroid/view/View;
    move-object v4, v1

    .line 49
    check-cast v4, Lcom/vkontakte/android/AudioAttachView;

    iget-object v5, p0, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkontakte/android/AudioAttachment;

    iget-object v5, v5, Lcom/vkontakte/android/AudioAttachment;->playlist:[Lcom/vkontakte/android/AudioFile;

    iput-object v5, v4, Lcom/vkontakte/android/AudioAttachView;->playlist:[Lcom/vkontakte/android/AudioFile;

    move-object v4, v1

    .line 50
    check-cast v4, Lcom/vkontakte/android/AudioAttachView;

    iget-object v5, p0, Lcom/vkontakte/android/ui/posts/AudioPostDisplayItem;->att:Lcom/vkontakte/android/AudioAttachment;

    iget v5, v5, Lcom/vkontakte/android/AudioAttachment;->playlistPos:I

    iput v5, v4, Lcom/vkontakte/android/AudioAttachView;->playlistPos:I

    .line 51
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v4, v3

    .line 53
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    return-object v3

    .end local v1    # "av":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move-object v4, v3

    .line 40
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
    .line 67
    return-void
.end method
