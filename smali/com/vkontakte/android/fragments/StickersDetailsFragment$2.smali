.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$100(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$100(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 68
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    rem-int v0, v2, v3

    .line 70
    .local v0, "page":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$2;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$200(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;

    move-result-object v2

    iput-boolean v4, v2, Lcom/vkontakte/android/fragments/StickersDetailsFragment$FixedSpeedScroller;->autoScroll:Z

    .line 71
    invoke-virtual {v1, v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 72
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
