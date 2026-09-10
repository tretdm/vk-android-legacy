.class Lcom/vkontakte/android/AudioPlayerActivity$11$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$11;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$11;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->postInvalidate()V

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AudioPlayerActivity$11;->onPageScrollStateChanged(I)V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    iget-object v1, v1, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$11;

    iget-object v0, v0, Lcom/vkontakte/android/AudioPlayerActivity$11;->val$pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 326
    return-void
.end method
