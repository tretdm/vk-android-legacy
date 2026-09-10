.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->initThumbsQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;

    .local v0, "runnable":Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
    if-nez v0, :cond_0

    .line 320
    .end local v0    # "runnable":Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
    :goto_1
    return-void

    .line 301
    .restart local v0    # "runnable":Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$2(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$2(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 302
    :cond_1
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->toRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    .end local v0    # "runnable":Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Error in thumbnail loop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 304
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "runnable":Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;->cancel()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
