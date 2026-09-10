.class Lcom/vkontakte/android/fragments/PhotosFragment$1;
.super Ljava/lang/Object;
.source "PhotosFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotosFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotosFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotosFragment;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotosFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotosFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PhotosFragment;->access$002(Lcom/vkontakte/android/fragments/PhotosFragment;Z)Z

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment$1;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
