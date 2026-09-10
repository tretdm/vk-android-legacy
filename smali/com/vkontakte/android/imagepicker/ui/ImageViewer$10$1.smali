.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$animationStarted:J


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;JLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    iput-wide p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->val$animationStarted:J

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->val$after:Ljava/lang/Runnable;

    .line 1562
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1565
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->val$after:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;Ljava/lang/Runnable;)V

    .line 1583
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->val$animationStarted:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$19(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 1585
    .local v0, "delay":I
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1591
    return-void
.end method
