.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

.field final synthetic val$dots:Landroid/widget/LinearLayout;

.field final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$dots:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$800(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    if-nez p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$800(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 186
    int-to-float v1, p1

    add-float v0, v1, p2

    .line 187
    .local v0, "position":F
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/ui/ParallaxDrawable;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ParallaxDrawable;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 190
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$dots:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$4;->val$dots:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method
