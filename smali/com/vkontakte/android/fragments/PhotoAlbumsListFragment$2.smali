.class Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;
.super Ljava/lang/Object;
.source "PhotoAlbumsListFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x1

    .line 104
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 105
    iget-object v1, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->access$3(Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;Z)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment$2;->this$0:Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/PhotoAlbumsListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 107
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
