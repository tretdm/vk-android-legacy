.class Lcom/vkontakte/android/fragments/FavePostListFragment$1;
.super Ljava/lang/Object;
.source "FavePostListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FaveGetPosts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/FavePostListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FavePostListFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FavePostListFragment;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FavePostListFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FavePostListFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/FavePostListFragment;->onError(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 3
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/NewsEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "news":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FavePostListFragment;

    iget v1, v0, Lcom/vkontakte/android/fragments/FavePostListFragment;->offset:I

    iget v2, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->val$count:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/vkontakte/android/fragments/FavePostListFragment;->offset:I

    .line 29
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FavePostListFragment$1;->this$0:Lcom/vkontakte/android/fragments/FavePostListFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/fragments/FavePostListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
