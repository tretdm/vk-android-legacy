.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearMinimumScale(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .line 1386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$28(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$26(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$8(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    .line 1392
    return-void
.end method
