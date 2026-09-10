.class Lcom/vkontakte/android/imagepicker/InlineUtils$3;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/InlineUtils;->applyFilter(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$wasFiltered:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-boolean p2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$wasFiltered:Z

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-boolean v2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$wasFiltered:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$wasFiltered:Z

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 113
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$3;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
