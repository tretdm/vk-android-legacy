.class Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;
.super Ljava/lang/Object;
.source "LocalImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsStyledThumbCachedSync(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;[ZLjava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$result:[Z

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$lock:Ljava/util/concurrent/Semaphore;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$result:[Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsStyledThumbCached(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 206
    return-void
.end method
