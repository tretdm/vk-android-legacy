.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchHighload(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->val$runnable:Ljava/lang/Runnable;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;)Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$4(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$6(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Z)V

    .line 420
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$5(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 421
    return-void

    .line 386
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImagePickerDiskQueue#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 388
    .local v1, "thread":Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->start()V

    .line 390
    new-instance v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5$1;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;)V

    .line 414
    const/4 v3, 0x0

    .line 390
    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
