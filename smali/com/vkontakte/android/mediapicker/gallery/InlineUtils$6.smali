.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$ondone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$ondone:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$ondone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 172
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFooterView()Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getFooterView()Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$6;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 184
    const-wide/16 v2, 0x190

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_0
    return-void
.end method
