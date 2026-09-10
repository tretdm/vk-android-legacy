.class Lcom/vkontakte/android/fragments/NewsFragment$6;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->updateLists()V
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 264
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsfeedList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "rlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v3, 0x7f080044

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v3, 0x7f08019f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 253
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v3, 0x7f080057

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v3, 0x7f0800fa

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/NewsFragment;->access$5(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    invoke-static {p1}, Lcom/vkontakte/android/cache/NewsfeedCache;->setLists(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 258
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/NewsfeedList;

    .local v0, "list":Lcom/vkontakte/android/NewsfeedList;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$6;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$6(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method
