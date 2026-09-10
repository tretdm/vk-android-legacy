.class final Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "InlineUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;->val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 2
    .param p1, "origImage"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;->val$result:Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$7;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
