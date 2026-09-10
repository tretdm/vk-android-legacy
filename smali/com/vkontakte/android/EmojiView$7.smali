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
    .line 385
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "offset"    # F
    .param p3, "pixelOffset"    # I

    .prologue
    .line 395
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 396
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    int-to-float v2, p1

    add-float v1, v2, p2

    .line 397
    .local v1, "position":F
    instance-of v2, v0, Lcom/vkontakte/android/ui/ParallaxDrawable;

    if-eqz v2, :cond_0

    .line 398
    check-cast v0, Lcom/vkontakte/android/ui/ParallaxDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v2}, Lcom/vkontakte/android/EmojiView;->access$1200(Lcom/vkontakte/android/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 399
    iget-object v2, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-virtual {v2}, Lcom/vkontakte/android/EmojiView;->invalidate()V

    .line 401
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$1100(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$7;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v1}, Lcom/vkontakte/android/EmojiView;->access$1100(Lcom/vkontakte/android/EmojiView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 391
    :cond_1
    return-void
.end method
