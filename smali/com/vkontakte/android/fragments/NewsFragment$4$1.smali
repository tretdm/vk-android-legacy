.class Lcom/vkontakte/android/fragments/NewsFragment$4$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment$4;Landroid/app/Activity;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$act:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment$4;->access$0(Lcom/vkontakte/android/fragments/NewsFragment$4;)Lcom/vkontakte/android/fragments/NewsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 178
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment$4;->access$0(Lcom/vkontakte/android/fragments/NewsFragment$4;)Lcom/vkontakte/android/fragments/NewsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment;->access$7(Lcom/vkontakte/android/fragments/NewsFragment;)V

    .line 179
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$act:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "feed_list"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "lid":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 181
    :cond_0
    const/4 v3, -0x2

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 182
    :cond_1
    const/4 v3, -0x3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 183
    :cond_2
    const/4 v0, 0x5

    .line 184
    .local v0, "i":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment$4;->access$0(Lcom/vkontakte/android/fragments/NewsFragment$4;)Lcom/vkontakte/android/fragments/NewsFragment;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 191
    :goto_2
    return-void

    .line 177
    .end local v0    # "i":I
    .end local v1    # "lid":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsfeedList;

    .local v2, "list":Lcom/vkontakte/android/NewsfeedList;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$4;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment$4;->access$0(Lcom/vkontakte/android/fragments/NewsFragment$4;)Lcom/vkontakte/android/fragments/NewsFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iget-object v5, v2, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v2    # "list":Lcom/vkontakte/android/NewsfeedList;
    .restart local v0    # "i":I
    .restart local v1    # "lid":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/NewsfeedList;

    .line 185
    .restart local v2    # "list":Lcom/vkontakte/android/NewsfeedList;
    iget v4, v2, Lcom/vkontakte/android/NewsfeedList;->id:I

    if-ne v4, v1, :cond_5

    .line 186
    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$4$1;->val$sa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_2

    .line 189
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
