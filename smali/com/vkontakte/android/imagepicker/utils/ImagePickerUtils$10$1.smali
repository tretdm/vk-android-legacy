.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "ImagePickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;

.field private final synthetic val$bitmap:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->this$1:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$bitmap:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    iput-boolean p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$sync:Z

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 1010
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$bitmap:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 1016
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$sync:Z

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$bitmap:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->val$bitmap:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10$1;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
