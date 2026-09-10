.class public abstract Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;
.super Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;
.source "OnCheckClickListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;"
    }
.end annotation


# static fields
.field private static final ReturnDuration:I = 0x57


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;, "Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener<TT;>;"
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;-><init>()V

    .line 19
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->setRequiredApiVersionForStateListeners(I)Lcom/vkontakte/android/imagepicker/utils/OnClickTouchListener;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getCheckViewFromWrap(Landroid/view/View;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getEntry(Landroid/view/View;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;"
        }
    .end annotation
.end method

.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z

    .prologue
    .local p0, "this":Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;, "Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener<TT;>;"
    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->getCheckViewFromWrap(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "check":Landroid/view/View;, "TT;"
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->getEntry(Landroid/view/View;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v2

    .line 41
    .local v2, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v3, v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->maximumSelectedSize:I

    .line 42
    .local v3, "maximum":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v5, v5, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->selectedImages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v4

    .line 44
    .local v4, "selected":I
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsChecked()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    if-gt v5, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 46
    .local v0, "becomeChecked":Z
    :goto_0
    if-nez v0, :cond_1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x57

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;

    invoke-direct {v6, p0, v1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 61
    :cond_1
    return-void

    .line 44
    .end local v0    # "becomeChecked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;, "Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener<TT;>;"
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->getCheckViewFromWrap(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "checkView":Landroid/view/View;, "TT;"
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->getEntry(Landroid/view/View;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v1

    .line 69
    .local v1, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->updateCheck(Landroid/view/View;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->bounce(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;, "Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener<TT;>;"
    const v1, 0x3f547ae1    # 0.83f

    .line 29
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnCheckClickListener;->getCheckViewFromWrap(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "check":Landroid/view/View;, "TT;"
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 33
    return-void
.end method

.method public abstract updateCheck(Landroid/view/View;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            ")Z"
        }
    .end annotation
.end method
