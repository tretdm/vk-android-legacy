.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->applyEnhance(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$doApply:Z

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$imageIndex:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZLcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$doApply:Z

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$imageIndex:I

    .line 946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;)Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 951
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$doApply:Z

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$imageIndex:I

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V

    .line 977
    :goto_0
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setEnhanced(Z)V

    .line 960
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->checkStyleTopicality()V

    .line 963
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    new-instance v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;->val$imageIndex:I

    invoke-direct {v4, p0, v3, v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19$1;-><init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$19;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V

    .line 975
    const/4 v6, -0x1

    move v3, v2

    move v5, v2

    .line 963
    invoke-virtual/range {v0 .. v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    goto :goto_0
.end method
