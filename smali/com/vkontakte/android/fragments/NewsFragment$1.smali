.class Lcom/vkontakte/android/fragments/NewsFragment$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


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
    .line 140
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 8
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v3, -0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$000(Lcom/vkontakte/android/fragments/NewsFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$002(Lcom/vkontakte/android/fragments/NewsFragment;Z)Z

    .line 177
    :cond_0
    :goto_0
    return v4

    .line 148
    :cond_1
    if-nez p1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feed_list"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->setList(I)Z

    .line 152
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feed_list"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1, v7}, Lcom/vkontakte/android/fragments/NewsFragment;->setList(I)Z

    .line 156
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feed_list"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1, v6}, Lcom/vkontakte/android/fragments/NewsFragment;->setList(I)Z

    .line 160
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feed_list"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->setList(I)Z

    .line 164
    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 165
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$100(Lcom/vkontakte/android/fragments/NewsFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 168
    const-string v1, "NewsSearchFragment"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 172
    :goto_1
    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p1, -0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsfeedList;

    iget v0, v1, Lcom/vkontakte/android/NewsfeedList;->id:I

    .line 174
    .local v0, "lid":I
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "feed_list"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/NewsFragment;->setList(I)Z

    goto/16 :goto_0

    .line 170
    .end local v0    # "lid":I
    :cond_6
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$1;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1, p1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$102(Lcom/vkontakte/android/fragments/NewsFragment;I)I

    goto :goto_1
.end method
