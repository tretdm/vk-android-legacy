.class Lcom/vkontakte/android/ui/PhotoView$6$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PhotoView$6;

.field private final synthetic val$pos:I

.field private final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$6;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->val$thumb:Landroid/graphics/Bitmap;

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$6$1;)Lcom/vkontakte/android/ui/PhotoView$6;
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$25(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->isCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1040
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1042
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 1043
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->val$thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1044
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1045
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 1046
    const-string v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set thumb image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView;->access$27(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$14(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1051
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$6$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoView$6$1$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$6$1;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$29(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
