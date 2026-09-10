.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->init()V
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
    .line 195
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$200(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$100(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z

    move-result v0

    return v0
.end method
