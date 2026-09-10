.class Lcom/vkontakte/android/NewVideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onPlayerReady(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 478
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    :cond_0
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VIDEO SIZE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 485
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "t = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-wide v4, v4, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    new-instance v0, Lcom/vkontakte/android/api/VideoReportStats;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$27(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/vkontakte/android/api/VideoReportStats;-><init>(IIIZ)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VideoReportStats;->exec()Lcom/vkontakte/android/APIRequest;

    .line 487
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 489
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 490
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0, v6}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 491
    return-void
.end method
