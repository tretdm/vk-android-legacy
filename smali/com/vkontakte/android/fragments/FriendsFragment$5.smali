.class Lcom/vkontakte/android/fragments/FriendsFragment$5;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 221
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 222
    .local v0, "ns":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$600(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$602(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z

    .line 224
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$600(Lcom/vkontakte/android/fragments/FriendsFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1300(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 227
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->onPageScrolled(IFI)V

    .line 228
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1200(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-virtual {v2, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->onPageSelected(I)V

    .line 233
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateFilter(Ljava/lang/String;)V

    .line 234
    return v1

    .end local v0    # "ns":Z
    :cond_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 230
    .restart local v0    # "ns":Z
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 212
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$5;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 214
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 216
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v4
.end method
