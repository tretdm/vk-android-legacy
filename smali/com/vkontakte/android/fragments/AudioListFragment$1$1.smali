.class Lcom/vkontakte/android/fragments/AudioListFragment$1$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioListFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/AudioListFragment$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioListFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$1;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/AudioListFragment$1$1;)Lcom/vkontakte/android/fragments/AudioListFragment$1;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$1;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/fragments/AudioListFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/AudioListFragment$1;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment$1;->access$0(Lcom/vkontakte/android/fragments/AudioListFragment$1;)Lcom/vkontakte/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/AudioListFragment;->access$2(Lcom/vkontakte/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/AudioListFragment$1$1$1;-><init>(Lcom/vkontakte/android/fragments/AudioListFragment$1$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
