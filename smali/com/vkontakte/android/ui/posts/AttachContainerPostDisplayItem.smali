.class public Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;
.super Lcom/vkontakte/android/ui/posts/PostDisplayItem;
.source "AttachContainerPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$1;,
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

.field private fromList:Z


# direct methods
.method public constructor <init>(IILjava/util/ArrayList;Z)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p4, "list"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "_atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 23
    iput-object p3, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    .line 24
    iput-boolean p4, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->fromList:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getImageCount()I
    .locals 4

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, "count":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 36
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    return v1
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 4
    .param p1, "image"    # I

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 89
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v3, :cond_0

    .line 90
    if-ne v1, p1, :cond_1

    check-cast v0, Lcom/vkontakte/android/ImageAttachment;

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    invoke-interface {v0}, Lcom/vkontakte/android/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    .line 94
    :goto_1
    return-object v3

    .line 91
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x9

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v9, 0x0

    .line 43
    move-object v6, p2

    .line 44
    .local v6, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 45
    new-instance v6, Landroid/widget/FrameLayout;

    .end local v6    # "view":Landroid/view/View;
    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .restart local v6    # "view":Landroid/view/View;
    new-instance v2, Lcom/vkontakte/android/ui/FlowLayout;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/ui/FlowLayout;-><init>(Landroid/content/Context;)V

    .local v2, "fl":Lcom/vkontakte/android/ui/FlowLayout;
    move-object v7, v6

    .line 47
    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 48
    new-instance v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    invoke-direct {v3, v9}, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;-><init>(Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$1;)V

    .line 49
    .local v3, "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    iput-object v2, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    .line 50
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v2, v7, v10, v8, v10}, Lcom/vkontakte/android/ui/FlowLayout;->setPadding(IIII)V

    .line 54
    .end local v2    # "fl":Lcom/vkontakte/android/ui/FlowLayout;
    .end local v3    # "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 55
    .restart local v3    # "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/FlowLayout;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 56
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "att":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/vkontakte/android/Attachment;->reuseView(Landroid/view/View;Ljava/lang/String;)V

    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "att":Landroid/view/View;
    :cond_2
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/FlowLayout;->removeAllViews()V

    .line 62
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 63
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-eqz v7, :cond_3

    .line 64
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->fromList:Z

    if-eqz v7, :cond_4

    .line 65
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0, p1, v9}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 67
    :cond_4
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 70
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 71
    .restart local v0    # "att":Lcom/vkontakte/android/Attachment;
    instance-of v7, v0, Lcom/vkontakte/android/ImageAttachment;

    if-nez v7, :cond_6

    .line 72
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->fromList:Z

    if-eqz v7, :cond_7

    .line 73
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v0, p1, v9}, Lcom/vkontakte/android/Attachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 75
    :cond_7
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/Attachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, "av":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_8
    iget-object v7, v3, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v7, v1}, Lcom/vkontakte/android/ui/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 82
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v1    # "av":Landroid/view/View;
    :cond_9
    return-object v6
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;

    .line 100
    .local v1, "holder":Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;
    iget-object v2, v1, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem$ViewHolder;->flowLayout:Lcom/vkontakte/android/ui/FlowLayout;

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "av":Landroid/view/View;
    if-nez p3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0}, Lcom/vkontakte/android/ImageAttachment;->clearImage(Landroid/view/View;)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/posts/AttachContainerPostDisplayItem;->atts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageAttachment;

    invoke-interface {v2, v0, p3, p4}, Lcom/vkontakte/android/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
