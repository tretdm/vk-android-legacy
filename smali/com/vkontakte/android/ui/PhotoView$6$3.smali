.class Lcom/vkontakte/android/ui/PhotoView$6$3;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1098
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$6$3;->this$1:Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$6;->access$0(Lcom/vkontakte/android/ui/PhotoView$6;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v2, v1}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1103
    return-void
.end method
