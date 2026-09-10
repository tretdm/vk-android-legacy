.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;
.super Landroid/graphics/Paint;
.source "GalleryPickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;)V
    .locals 1

    .prologue
    .line 560
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 562
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;->this$1:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;

    iget v0, v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;->val$color:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7$1;->setColor(I)V

    .line 563
    return-void
.end method
