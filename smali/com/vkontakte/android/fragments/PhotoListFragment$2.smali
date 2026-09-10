.class Lcom/vkontakte/android/fragments/PhotoListFragment$2;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(III)V
    .locals 6
    .param p1, "firstItem"    # I
    .param p2, "visibleCount"    # I
    .param p3, "total"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 250
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1100(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1000(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 252
    .local v0, "alpha":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1200(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    const v1, 0x3e8a3d71    # 0.27f

    .line 255
    .local v1, "minAlpha":F
    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$1300(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 259
    .end local v0    # "alpha":I
    .end local v1    # "minAlpha":F
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$700(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$800(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$900(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 232
    :cond_0
    return-void
.end method
