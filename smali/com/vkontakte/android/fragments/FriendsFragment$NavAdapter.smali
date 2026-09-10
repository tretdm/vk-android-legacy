.class Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;, "Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter<TT;>;"
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 456
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 457
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 470
    .local p0, "this":Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;, "Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 471
    if-nez p2, :cond_0

    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 475
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 479
    .local p0, "this":Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;, "Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 461
    .local p0, "this":Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;, "Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 462
    if-nez p2, :cond_0

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 466
    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 483
    .local p0, "this":Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;, "Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
