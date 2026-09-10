.class Lcom/vkontakte/android/ui/PhotoView$7$2$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$7$2;->onProgressChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ui/PhotoView$7$2;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$7$2;II)V
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$2;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->val$progress:I

    iput p3, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$2;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$100(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->val$progress:I

    int-to-double v1, v1

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->val$total:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 1084
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$2$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$2;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7$2;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$000(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1091
    return-void
.end method
