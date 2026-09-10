.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5$1;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;

.field private final synthetic val$thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5$1;->val$thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 314
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;->access$0(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;)Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$10(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .local v0, "runnable":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 328
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :goto_1
    return-void

    .line 319
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
