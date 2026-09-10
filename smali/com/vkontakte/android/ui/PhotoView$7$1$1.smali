.class Lcom/vkontakte/android/ui/PhotoView$7$1$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ui/PhotoView$7$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$7$1;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$100(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1058
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$7$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$7;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$2802(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1059
    return-void
.end method
