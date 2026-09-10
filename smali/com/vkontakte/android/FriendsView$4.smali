.class Lcom/vkontakte/android/FriendsView$4;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/UsersSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FriendsView;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FriendsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FriendsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendsView$4;)Lcom/vkontakte/android/FriendsView;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/FriendsView;->access$11(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/APIRequest;)V

    .line 376
    return-void
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/16 v3, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 350
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$9(Lcom/vkontakte/android/FriendsView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->updateList()V

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/FriendsView;->access$11(Lcom/vkontakte/android/FriendsView;Lcom/vkontakte/android/APIRequest;)V

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$9(Lcom/vkontakte/android/FriendsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/FriendsView;->access$12(Lcom/vkontakte/android/FriendsView;Z)V

    .line 362
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$8(Lcom/vkontakte/android/FriendsView;)V

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/FriendsView;->access$13(Lcom/vkontakte/android/FriendsView;Z)V

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    new-instance v1, Lcom/vkontakte/android/FriendsView$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendsView$4$1;-><init>(Lcom/vkontakte/android/FriendsView$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/FriendsView;->post(Ljava/lang/Runnable;)Z

    .line 371
    :goto_2
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$10(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    goto :goto_2

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$1(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/FriendsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/FriendsView$Section;->list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/FriendsView$4;->this$0:Lcom/vkontakte/android/FriendsView;

    invoke-static {v0}, Lcom/vkontakte/android/FriendsView;->access$10(Lcom/vkontakte/android/FriendsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x32

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 364
    goto :goto_1
.end method
