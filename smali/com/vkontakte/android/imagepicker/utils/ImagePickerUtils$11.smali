.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$unlock_executed:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;[ZLjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->val$unlock_executed:[Z

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->val$lock:Ljava/util/concurrent/Semaphore;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1052
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->val$unlock_executed:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1055
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;->val$unlock_executed:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1057
    :cond_0
    return-void
.end method
