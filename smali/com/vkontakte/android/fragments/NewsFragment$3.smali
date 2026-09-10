.class Lcom/vkontakte/android/fragments/NewsFragment$3;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 9
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1(Lcom/vkontakte/android/fragments/NewsFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$2(Lcom/vkontakte/android/fragments/NewsFragment;Z)V

    .line 132
    :cond_0
    :goto_0
    return v4

    .line 111
    :cond_1
    if-nez p1, :cond_2

    .line 112
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 116
    :cond_2
    if-ne p1, v5, :cond_3

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 121
    :cond_3
    if-ne p1, v8, :cond_4

    .line 122
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    if-le p1, v8, :cond_0

    .line 127
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$3(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsfeedList;

    iget v1, v2, Lcom/vkontakte/android/NewsfeedList;->id:I

    .line 128
    .local v1, "lid":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto/16 :goto_0
.end method
