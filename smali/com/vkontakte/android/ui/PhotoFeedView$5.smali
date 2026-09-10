.class Lcom/vkontakte/android/ui/PhotoFeedView$5;
.super Ljava/lang/Object;
.source "PhotoFeedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoFeedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoFeedView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoFeedView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$11(Lcom/vkontakte/android/ui/PhotoFeedView;J)V

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$12(Lcom/vkontakte/android/ui/PhotoFeedView;I)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$13(Lcom/vkontakte/android/ui/PhotoFeedView;F)V

    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$14(Lcom/vkontakte/android/ui/PhotoFeedView;)V

    .line 369
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PhotoFeed: page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoFeedView$5;->this$0:Lcom/vkontakte/android/ui/PhotoFeedView;

    invoke-static {v2}, Lcom/vkontakte/android/ui/PhotoFeedView;->access$1(Lcom/vkontakte/android/ui/PhotoFeedView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method
