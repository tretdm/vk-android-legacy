.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchThumbnail(Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$runnable:Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;->val$runnable:Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$3(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)V

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;->val$runnable:Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method
