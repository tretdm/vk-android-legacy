.class Lcom/vkontakte/android/ui/PhotoView$7$4;
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

.field private final synthetic val$b:Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$7;ILcom/vkontakte/android/ui/PhotoView$RunnableFuture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->val$pos:I

    iput-object p3, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->val$b:Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->val$pos:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$3(Lcom/vkontakte/android/ui/PhotoView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->val$b:Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$32(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ui/PhotoView;->access$32(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$1(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$7$4;->this$1:Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView$7;->access$0(Lcom/vkontakte/android/ui/PhotoView$7;)Lcom/vkontakte/android/ui/PhotoView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    goto :goto_0
.end method
