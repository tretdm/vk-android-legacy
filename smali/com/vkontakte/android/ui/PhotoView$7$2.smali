.class Lcom/vkontakte/android/ui/PhotoView$7$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/vkontakte/android/ImageCache$ProgressCallback;


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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$7;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->val$pos:I

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView$7$2;)Lcom/vkontakte/android/ui/PhotoView$7;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(II)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "total"    # I

    .prologue
    .line 1081
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->val$pos:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$7$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ui/PhotoView$7$2$1;-><init>(Lcom/vkontakte/android/ui/PhotoView$7$2;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1092
    :cond_0
    return-void
.end method
