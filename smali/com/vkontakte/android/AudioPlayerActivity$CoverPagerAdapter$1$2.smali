.class Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;->notAvailable(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->this$2:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->val$v:Landroid/view/View;

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$1$2;->val$v:Landroid/view/View;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    return-void
.end method
