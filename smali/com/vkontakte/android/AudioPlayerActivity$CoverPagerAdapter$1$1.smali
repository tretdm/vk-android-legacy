.class Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->val$v:Landroid/view/View;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 985
    return-void
.end method
