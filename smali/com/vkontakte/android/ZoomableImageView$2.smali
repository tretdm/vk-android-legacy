.class Lcom/vkontakte/android/ZoomableImageView$2;
.super Ljava/lang/Object;
.source "ZoomableImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ZoomableImageView;->postNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ZoomableImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->access$3(Lcom/vkontakte/android/ZoomableImageView;F)V

    .line 757
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView;->access$4(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView;->access$4(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v1}, Lcom/vkontakte/android/ZoomableImageView;->access$5(Lcom/vkontakte/android/ZoomableImageView;)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ZoomableImageView;->access$6(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Bitmap;)V

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ZoomableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView;->access$7(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView$2;->this$0:Lcom/vkontakte/android/ZoomableImageView;

    invoke-static {v0}, Lcom/vkontakte/android/ZoomableImageView;->access$7(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/ZoomableImageView$OnNavListener;->onNavNext()V

    .line 763
    :cond_1
    return-void
.end method
