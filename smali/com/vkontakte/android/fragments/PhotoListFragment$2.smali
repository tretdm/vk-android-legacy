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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(III)V
    .locals 3
    .param p1, "firstItem"    # I
    .param p2, "visibleCount"    # I
    .param p3, "total"    # I

    .prologue
    .line 234
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 235
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 236
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$13(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$12(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 238
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$14(Lcom/vkontakte/android/fragments/PhotoListFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    .end local v0    # "alpha":I
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$9(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$10(Lcom/vkontakte/android/fragments/PhotoListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoListFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotoListFragment;->access$11(Lcom/vkontakte/android/fragments/PhotoListFragment;)V

    .line 218
    :cond_0
    return-void
.end method
