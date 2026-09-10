.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;)V
    .locals 0

    .prologue
    .line 1707
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;->val$ender:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1711
    return-void
.end method
