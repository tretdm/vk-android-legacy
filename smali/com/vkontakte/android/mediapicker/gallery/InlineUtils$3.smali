.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyFilter(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$wasFiltered:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-boolean p2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$wasFiltered:Z

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 124
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$wasFiltered:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$wasFiltered:Z

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    const/4 v7, -0x1

    move v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V

    .line 125
    return-void

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$3;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
