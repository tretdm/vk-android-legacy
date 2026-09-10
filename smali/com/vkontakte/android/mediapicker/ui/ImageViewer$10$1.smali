.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1569
    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;)V

    .line 1587
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-wide v4, v4, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$animationStarted:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v4, v4, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1700(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 1589
    .local v0, "delay":I
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1595
    return-void
.end method
