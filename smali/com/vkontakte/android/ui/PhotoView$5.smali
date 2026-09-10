.class Lcom/vkontakte/android/ui/PhotoView$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView;->setAdapter(Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/PhotoView;

.field private final synthetic val$tt:J


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    iput-wide p2, p0, Lcom/vkontakte/android/ui/PhotoView$5;->val$tt:J

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 973
    const-string v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wait before load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/ui/PhotoView$5;->val$tt:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$22(Lcom/vkontakte/android/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 980
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$5;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$23(Lcom/vkontakte/android/ui/PhotoView;Z)V

    goto :goto_0
.end method
