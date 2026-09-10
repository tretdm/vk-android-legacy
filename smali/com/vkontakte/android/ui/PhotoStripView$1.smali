.class Lcom/vkontakte/android/ui/PhotoStripView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoStripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/PhotoStripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoStripView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoStripView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    .line 24
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PhotoStripView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/PhotoStripView;->access$0(Lcom/vkontakte/android/ui/PhotoStripView;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 27
    .local v0, "index":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoStripView;->access$1(Lcom/vkontakte/android/ui/PhotoStripView;)[Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/PhotoStripView;->playSoundEffect(I)V

    .line 29
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoStripView;->access$2(Lcom/vkontakte/android/ui/PhotoStripView;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoStripView;->access$2(Lcom/vkontakte/android/ui/PhotoStripView;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoStripView$1;->this$0:Lcom/vkontakte/android/ui/PhotoStripView;

    invoke-interface {v1, v2, v0}, Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;->onPhotoClick(Lcom/vkontakte/android/ui/PhotoStripView;I)V

    .line 32
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
