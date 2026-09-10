.class Lcom/vkontakte/android/NewVideoPlayerActivity$7;
.super Ljava/lang/Object;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 256
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 262
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 263
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 266
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    new-instance v2, Landroid/view/SurfaceView;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v2, v3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/SurfaceView;)V

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 273
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v2, 0x7f060147

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 274
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 275
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->getDataSource()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "ds":Ljava/lang/String;
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    new-instance v2, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$27(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/media/PlayerWrapper;)V

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 280
    .end local v0    # "ds":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$28(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 282
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    const v2, 0x7f06014b

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$7;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-static {v1, v6}, Lcom/vkontakte/android/NewVideoPlayerActivity;->access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V

    goto/16 :goto_0
.end method
