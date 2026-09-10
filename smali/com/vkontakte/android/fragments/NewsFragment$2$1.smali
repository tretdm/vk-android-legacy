.class Lcom/vkontakte/android/fragments/NewsFragment$2$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment$2;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsfeedList;

    .local v3, "list":Lcom/vkontakte/android/NewsfeedList;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iget-object v5, v3, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    .end local v3    # "list":Lcom/vkontakte/android/NewsfeedList;
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$400(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 189
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_2

    .line 202
    :cond_1
    :goto_1
    return-void

    .line 190
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "feed_list"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "lid":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 192
    :cond_3
    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 193
    :cond_4
    const/4 v4, -0x3

    if-ne v2, v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 194
    :cond_5
    const/4 v0, 0x5

    .line 195
    .local v0, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/NewsfeedList;

    .line 196
    .restart local v3    # "list":Lcom/vkontakte/android/NewsfeedList;
    iget v4, v3, Lcom/vkontakte/android/NewsfeedList;->id:I

    if-ne v4, v2, :cond_6

    .line 197
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$2$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$2;

    iget-object v4, v4, Lcom/vkontakte/android/fragments/NewsFragment$2;->val$act:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 200
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
