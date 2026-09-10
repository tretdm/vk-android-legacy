.class Lcom/vkontakte/android/PhotoViewerActivity$3;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 282
    if-ne p1, v4, :cond_2

    .line 283
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "page"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 284
    .local v1, "f1":Landroid/app/Fragment;
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "page"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 285
    .local v2, "f2":Landroid/app/Fragment;
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v6}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "page"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v8, v8, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 286
    .local v0, "f":Landroid/app/Fragment;
    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v3, v6, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    .line 287
    .local v3, "show":Z
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v6, :cond_0

    .line 288
    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getScrollTop()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-boolean v6, v6, Lcom/vkontakte/android/PhotoViewerActivity;->controlsVisible:Z

    if-eqz v6, :cond_3

    move v3, v4

    .line 290
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    instance-of v4, v1, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 291
    check-cast v4, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    move-object v4, v1

    .line 292
    check-cast v4, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/PhotoViewerFragment;->setInfoPanelVisibility(Z)V

    .line 293
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v1    # "f1":Landroid/app/Fragment;
    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerFragment;->resetScroll()V

    .line 295
    :cond_1
    if-eqz v2, :cond_2

    instance-of v4, v2, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 296
    check-cast v4, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    move-object v4, v2

    .line 297
    check-cast v4, Lcom/vkontakte/android/PhotoViewerFragment;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/PhotoViewerFragment;->setInfoPanelVisibility(Z)V

    .line 298
    check-cast v2, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v2    # "f2":Landroid/app/Fragment;
    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoViewerFragment;->resetScroll()V

    .line 301
    .end local v3    # "show":Z
    :cond_2
    return-void

    .restart local v1    # "f1":Landroid/app/Fragment;
    .restart local v2    # "f2":Landroid/app/Fragment;
    .restart local v3    # "show":Z
    :cond_3
    move v3, v5

    .line 288
    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v3, -0x1

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$4(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 256
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$5(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$4(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    neg-int v2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 266
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 267
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1, v3}, Lcom/vkontakte/android/PhotoViewerActivity;->access$5(Lcom/vkontakte/android/PhotoViewerActivity;I)V

    .line 268
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 269
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/vkontakte/android/PhotoViewerFragment;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 270
    check-cast v1, Lcom/vkontakte/android/PhotoViewerFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerFragment;->updateInfoPanelVisibility(Z)V

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v3, v3, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    check-cast v0, Lcom/vkontakte/android/PhotoViewerFragment;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerFragment;->getScrollTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 278
    :cond_2
    return-void

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoViewerActivity;->access$4(Lcom/vkontakte/android/PhotoViewerActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;->commentBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->onNavNext()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->onNavPrev()V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->onNavPrev()V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget v0, v0, Lcom/vkontakte/android/PhotoViewerActivity;->curPhoto:I

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoViewerActivity;->list:[Lcom/vkontakte/android/Photo;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_3

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->onNavNext()V

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$3;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoViewerActivity;->updateInfoPanel()V

    .line 250
    return-void
.end method
