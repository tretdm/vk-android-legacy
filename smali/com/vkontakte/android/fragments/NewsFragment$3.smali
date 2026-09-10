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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 10
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v9, -0x2

    const/4 v8, -0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$1(Lcom/vkontakte/android/fragments/NewsFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2, v5}, Lcom/vkontakte/android/fragments/NewsFragment;->access$2(Lcom/vkontakte/android/fragments/NewsFragment;Z)V

    .line 167
    :cond_0
    :goto_0
    return v5

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 139
    :cond_2
    if-ne p1, v6, :cond_3

    .line 140
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 144
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 145
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 149
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 150
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    .line 154
    :cond_5
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 155
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment;->access$3(Lcom/vkontakte/android/fragments/NewsFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/vkontakte/android/NewsfeedSearchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v2, 0x4

    if-le p1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsfeedList;

    iget v1, v2, Lcom/vkontakte/android/NewsfeedList;->id:I

    .line 163
    .local v1, "lid":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "feed_list"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/NewsView;->setList(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$0(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/NewsView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/vkontakte/android/NewsView;->loadData(Z)V

    goto/16 :goto_0

    .line 159
    .end local v1    # "lid":I
    :cond_6
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$3;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2, p1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$4(Lcom/vkontakte/android/fragments/NewsFragment;I)V

    goto :goto_1
.end method
