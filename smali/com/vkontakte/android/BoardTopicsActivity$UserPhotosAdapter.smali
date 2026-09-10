.class Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;
.super Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
.source "BoardTopicsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/BoardTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserPhotosAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;-><init>(Lcom/vkontakte/android/BoardTopicsActivity;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 425
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$UserPhotosAdapter;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v0, v0, Lcom/vkontakte/android/BoardTopicsActivity;->topics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 440
    return-void
.end method
