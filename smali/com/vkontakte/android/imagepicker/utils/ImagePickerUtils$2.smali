.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setThumbnailTasksLimit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;->val$limit:I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;->val$limit:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$0(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V

    .line 268
    return-void
.end method
