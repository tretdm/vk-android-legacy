.class Lcom/vkontakte/android/fragments/NewsFragment$5;
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
    .line 309
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 327
    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 312
    .local p1, "rlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 314
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v4, 0x7f0d018c

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 315
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v4, 0x7f0d0252

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 316
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v4, 0x7f0d0100

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 317
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v4, 0x7f0d0131

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 318
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    const v4, 0x7f0d0278

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/fragments/NewsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 319
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$200(Lcom/vkontakte/android/fragments/NewsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsfeedList;

    .local v1, "list":Lcom/vkontakte/android/NewsfeedList;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NewsFragment$5;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NewsFragment;->access$300(Lcom/vkontakte/android/fragments/NewsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    iget-object v3, v1, Lcom/vkontakte/android/NewsfeedList;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 322
    .end local v1    # "list":Lcom/vkontakte/android/NewsfeedList;
    :cond_1
    invoke-static {p1}, Lcom/vkontakte/android/cache/NewsfeedCache;->setLists(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
