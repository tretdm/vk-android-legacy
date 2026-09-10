.class Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/GLRenderer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;->this$0:Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderer$4;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 108
    return-void
.end method
