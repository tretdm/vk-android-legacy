.class public Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "AttachContainerPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field public atts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "_atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 21
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 4

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "count":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    return v1

    .line 32
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 33
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "image"    # I

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "i":I
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 75
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    .line 76
    if-ne v1, p1, :cond_2

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 77
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x9

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v8, 0x0

    .line 40
    move-object v4, p2

    .line 41
    .local v4, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 42
    new-instance v4, Landroid/widget/FrameLayout;

    .end local v4    # "view":Landroid/view/View;
    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .restart local v4    # "view":Landroid/view/View;
    new-instance v1, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-direct {v1, p1}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .local v1, "fl":Lcom/vkontakte/android/ui/FlowLayout;
    move-object v5, v4

    .line 44
    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 45
    new-instance v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    invoke-direct {v2, v8}, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;)V

    .line 46
    .local v2, "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    iput-object v1, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 47
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v1, v5, v7, v6, v7}, Lcom/vkontakte/android/ui/FlowLayout;->setPadding(IIII)V

    .line 51
    .end local v1    # "fl":Lcom/vkontakte/android/ui/FlowLayout;
    .end local v2    # "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 52
    .restart local v2    # "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 58
    iget-object v5, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 59
    iget-object v5, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 63
    iget-object v5, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 68
    return-object v4

    .line 53
    :cond_3
    iget-object v5, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v5, v3}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 52
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "att":Landroid/view/View;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 60
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v6, :cond_1

    .line 61
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0, p1, v8}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 63
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 64
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v6, v0, Lcom/vkontakte/android/ImageAttachment;

    if-nez v6, :cond_2

    .line 65
    iget-object v6, v2, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0, p1, v8}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 86
    .local v1, "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    iget-object v2, v1, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "av":Landroid/view/View;
    if-nez p3, :cond_0

    .line 88
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0, p3, p4}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
