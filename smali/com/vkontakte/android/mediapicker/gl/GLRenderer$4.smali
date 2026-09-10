.class Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;->this$0:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 104
    return-void
.end method
