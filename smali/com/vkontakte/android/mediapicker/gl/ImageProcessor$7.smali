.class Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearForOtherContext(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 395
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$3(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Z)V

    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;->this$0:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->access$4(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Z)V

    .line 397
    return-void
.end method
