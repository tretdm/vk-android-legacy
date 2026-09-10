.class Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener$1;
.super Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
.source "ImageGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->postLongPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    .line 142
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener$1;->this$0:Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 148
    return-void
.end method
