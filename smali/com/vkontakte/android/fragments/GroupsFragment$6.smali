.class Lcom/vkontakte/android/fragments/GroupsFragment$6;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupsFragment;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 212
    .local v0, "ns":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$500(Lcom/vkontakte/android/fragments/GroupsFragment;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2, v0}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$502(Lcom/vkontakte/android/fragments/GroupsFragment;Z)Z

    .line 214
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$500(Lcom/vkontakte/android/fragments/GroupsFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$200(Lcom/vkontakte/android/fragments/GroupsFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 216
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$900(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->onPageScrolled(IFI)V

    .line 217
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$900(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    iget-object v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-virtual {v2, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;->onPageSelected(I)V

    .line 218
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$900(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setVisibility(I)V

    .line 223
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$1000(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/vkontakte/android/fragments/GroupListFragment;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateFilter(Ljava/lang/String;)V

    .line 224
    return v1

    .end local v0    # "ns":Z
    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 220
    .restart local v0    # "ns":Z
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->access$900(Lcom/vkontakte/android/fragments/GroupsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setVisibility(I)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/GroupsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 206
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v4
.end method
