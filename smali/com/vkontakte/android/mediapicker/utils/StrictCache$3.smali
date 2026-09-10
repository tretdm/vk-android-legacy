.class Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;
.super Ljava/lang/Object;
.source "StrictCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/StrictCache;->isCached(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;[ZLjava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$result:[Z

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$lock:Ljava/util/concurrent/Semaphore;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$result:[Z

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->this$0:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->isCached(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v3

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 118
    return-void
.end method
