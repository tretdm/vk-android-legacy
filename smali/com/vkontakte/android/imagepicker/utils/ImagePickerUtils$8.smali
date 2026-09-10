.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->postThumbnailFromMemcache(Ljava/lang/String;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$key:Ljava/lang/String;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getStyledThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 632
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsCached(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    const-string v0, "Something went wrong: strict cache doesn\'t conatin the thumb with key: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;->val$key:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 634
    :cond_0
    return-void
.end method
