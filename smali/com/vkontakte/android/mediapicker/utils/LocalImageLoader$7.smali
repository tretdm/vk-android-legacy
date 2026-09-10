.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field final synthetic val$unlock_executed:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;[ZLjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->val$unlock_executed:[Z

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->val$unlock_executed:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 493
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;->val$unlock_executed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 495
    :cond_0
    return-void
.end method
