.class Lcom/vkontakte/android/ui/PhotoView$7$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/PhotoView$7;

.field private final synthetic val$pos:I

.field private final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$7;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->val$thumb:Landroid/graphics/Bitmap;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$7$1;)Lcom/vkontakte/android/ui/PhotoView$7;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$2(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->val$pos:I

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->isCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$1(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1062
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$32(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$1(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 1065
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->val$thumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1067
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 1068
    const-string v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set thumb image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$20(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1073
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$32(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$32(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$7$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoView$7$1$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$7$1;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$33(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$18(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
