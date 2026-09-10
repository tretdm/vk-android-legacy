.class Lcom/vkontakte/android/GroupsView$4;
.super Ljava/lang/Object;
.source "GroupsView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsSearch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/GroupsView;->loadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/GroupsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/GroupsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupsView$4;)Lcom/vkontakte/android/GroupsView;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    return-object v0
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/GroupsView;->access$9(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/APIRequest;)V

    .line 257
    return-void
.end method

.method public success(Ljava/util/List;I)V
    .locals 5
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    const/16 v3, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$7(Lcom/vkontakte/android/GroupsView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/GroupsView;->updateList()V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/GroupsView;->access$9(Lcom/vkontakte/android/GroupsView;Lcom/vkontakte/android/APIRequest;)V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$7(Lcom/vkontakte/android/GroupsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/vkontakte/android/GroupsView;->access$10(Lcom/vkontakte/android/GroupsView;Z)V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$6(Lcom/vkontakte/android/GroupsView;)V

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/vkontakte/android/GroupsView;->access$11(Lcom/vkontakte/android/GroupsView;Z)V

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    new-instance v1, Lcom/vkontakte/android/GroupsView$4$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupsView$4$1;-><init>(Lcom/vkontakte/android/GroupsView$4;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/GroupsView;->post(Ljava/lang/Runnable;)Z

    .line 252
    :goto_2
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$8(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_2

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$0(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GroupsView$Section;

    iget-object v0, v0, Lcom/vkontakte/android/GroupsView$Section;->list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/GroupsView$4;->this$0:Lcom/vkontakte/android/GroupsView;

    invoke-static {v0}, Lcom/vkontakte/android/GroupsView;->access$8(Lcom/vkontakte/android/GroupsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x32

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 245
    goto :goto_1
.end method
