.class Lcom/vkontakte/android/EmojiView$7;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 408
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # F
    .param p3, "pixelOffset"    # I

    .prologue
    .line 396
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 397
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    int-to-float v2, p1

    add-float v1, v2, p2

    .line 398
    .local v1, "position":F
    instance-of v2, v0, Lcom/vkontakte/android/ui/ParallaxDrawable;

    if-eqz v2, :cond_0

    .line 399
    check-cast v0, Lcom/vkontakte/android/ui/ParallaxDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$21(Lcom/vkontakte/android/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 400
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->invalidate()V

    .line 402
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$20(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 392
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$20(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
