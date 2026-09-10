.class Lcom/vkontakte/android/imagepicker/ui/LocalImageView$2;
.super Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
.source "LocalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 97
    .local v0, "parent":Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->hideOverlay(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 106
    .local v2, "image":Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;

    .line 109
    .local v6, "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->getPosition()I

    move-result v3

    .line 111
    .local v3, "index":I
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 113
    .end local v3    # "index":I
    .end local v6    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :cond_0
    return-void

    .line 111
    .restart local v3    # "index":I
    .restart local v6    # "holder":Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
    :cond_1
    iget-object v1, v6, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;

    .line 88
    .local v0, "parent":Lcom/vkontakte/android/imagepicker/ui/LocalImageView;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/LocalImageView;->showOverlay()V

    .line 90
    :cond_0
    return-void
.end method
