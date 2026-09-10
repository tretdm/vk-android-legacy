.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;
.super Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 169
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnClickTouchListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    return-object v0
.end method

.method private returnScale()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 208
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x57

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 206
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onTapCanceled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "beforeCompleted"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 214
    if-nez p2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->returnScale()V

    .line 218
    :cond_0
    return-void
.end method

.method public onTapCompleted(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 225
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->performSelection(Lcom/vkontakte/android/mediapicker/ui/holders/ImageViewHolder;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 227
    .local v0, "checked":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$2(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLandroid/widget/ImageView;)V

    .line 228
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-static {v2, v0}, Lcom/vkontakte/android/mediapicker/utils/SelectionContext;->updateImageViewSelected(IZ)Z

    .line 230
    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->bounce(Landroid/view/View;Z)V

    .line 238
    :goto_1
    return-void

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 225
    goto :goto_0

    .line 236
    .restart local v0    # "checked":Z
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->returnScale()V

    goto :goto_1
.end method

.method public onTapStarted(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v2, 0x3f547ae1    # 0.83f

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$3;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method
