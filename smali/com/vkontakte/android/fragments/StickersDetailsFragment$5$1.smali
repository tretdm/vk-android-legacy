.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

.field final synthetic val$bg:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;->val$bg:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 244
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$100(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->access$100(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 246
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v1, Lcom/vkontakte/android/ui/ParallaxDrawable;

    invoke-direct {v1}, Lcom/vkontakte/android/ui/ParallaxDrawable;-><init>()V

    .line 247
    .local v1, "pd":Lcom/vkontakte/android/ui/ParallaxDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 248
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setCornersRadius(IIII)V

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$1;->val$bg:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/ParallaxDrawable;->setOffset(F)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
