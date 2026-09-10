.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "InlineUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 227
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 233
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$9;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
