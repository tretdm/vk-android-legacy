.class Lcom/vkontakte/android/NewVideoPlayerActivity$12;
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
    .line 593
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 594
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 597
    :cond_0
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIDEO SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2200(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2300(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->resize()V

    .line 599
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 601
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-wide v4, v4, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "video_play"

    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;

    move-result-object v3

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "quality"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2000(Lcom/vkontakte/android/NewVideoPlayerActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "position"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$2400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 604
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$1000(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 606
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 607
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$702(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z

    .line 608
    return-void
.end method
